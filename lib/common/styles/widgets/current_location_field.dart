import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class CurrentLocationField extends StatefulWidget {
  final Function(String location)? onLocationSelected;

  const CurrentLocationField({
    super.key, 
    this.onLocationSelected,
  });

  @override
  State<CurrentLocationField> createState() => _CurrentLocationFieldState();
}

class _CurrentLocationFieldState extends State<CurrentLocationField> {
  final TextEditingController _controller = TextEditingController();
  bool _loading = false;
  String _lastError = '';

  Future<void> _getCurrentLocation() async {
    if (_loading) return;
    
    setState(() {
      _loading = true;
      _controller.text = 'Detecting location...';
      _lastError = '';
    });

    try {
      // 1. Check location services
      if (!await Geolocator.isLocationServiceEnabled()) {
        throw Exception('Location services disabled');
      }

      // 2. Check permissions
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Permission denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        throw Exception('Permission permanently denied');
      }

      // 3. Get position
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      ).timeout(const Duration(seconds: 15));

      debugPrint('Obtained coordinates: ${position.latitude}, ${position.longitude}');

      // 4. Try to get readable location
      final locationText = await _getReadableLocation(
        position.latitude, 
        position.longitude,
      );

      setState(() {
        _controller.text = locationText;
        _loading = false;
      });

      widget.onLocationSelected?.call(locationText);
    } on TimeoutException {
      _setError('Connection timeout');
    } catch (e) {
      _setError('Could not determine location');
      debugPrint('Location error: $e');
    }
  }

  Future<String> _getReadableLocation(double lat, double lng) async {
    try {
      final placemarks = await placemarkFromCoordinates(lat, lng)
          .timeout(const Duration(seconds: 10));

      if (placemarks.isEmpty) {
        debugPrint('No placemark data available');
        return _formatCoordinates(lat, lng);
      }

      // Log all available data for debugging
      _logPlacemarkData(placemarks);

      // Try to get city and country
      final place = placemarks.first;
      final city = place.locality ?? place.subLocality ?? place.administrativeArea;
      final country = place.country;

      if (city != null && country != null) {
        return '$city, $country';
      }
      if (country != null) {
        return country;
      }
      if (city != null) {
        return city;
      }

      return _formatCoordinates(lat, lng);
    } catch (e) {
      debugPrint('Geocoding error: $e');
      return _formatCoordinates(lat, lng);
    }
  }

  void _logPlacemarkData(List<Placemark> placemarks) {
    debugPrint('--- Available Placemark Data ---');
    for (final place in placemarks) {
      debugPrint('''
      Locality: ${place.locality}
      SubLocality: ${place.subLocality}
      AdministrativeArea: ${place.administrativeArea}
      Country: ${place.country}
      ''');
    }
  }

  String _formatCoordinates(double lat, double lng) {
    return 'Coordinates: ${lat.toStringAsFixed(4)}°N, ${lng.toStringAsFixed(4)}°E';
  }

  void _setError(String message) {
    if (mounted) {
      setState(() {
        _controller.text = message;
        _loading = false;
        _lastError = message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: "Current Location",
        hintText: "Tap to detect location",
        prefixIcon: const Icon(Icons.location_pin),
        suffixIcon: _loading
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : IconButton(
                icon: const Icon(Icons.gps_fixed),
                onPressed: _getCurrentLocation,
              ),
        errorText: _lastError.isNotEmpty ? _lastError : null,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}