import 'package:intl/intl.dart';

class NFormatter {
  // Date/Time Formats --------------------------------

  /// Formats date (e.g., '18-Jun-2025')
  static String formatDate(DateTime? date, {String pattern = 'dd-MMM-yyyy'}) {
    date ??= DateTime.now();
    return DateFormat(pattern).format(date);
  }

  /// Formats time (e.g., '02:30 PM')
  static String formatTime(DateTime? time, {String pattern = 'hh:mm a'}) {
    time ??= DateTime.now();
    return DateFormat(pattern).format(time);
  }

  /// Formats date & time (e.g., '18-Jun-2025 02:30 PM')
  static String formatDateTime(DateTime? dateTime, {String pattern = 'dd-MMM-yyyy hh:mm a'}) {
    dateTime ??= DateTime.now();
    return DateFormat(pattern).format(dateTime);
  }

  /// Returns relative time (e.g., '2 hours ago')
  static String formatRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inSeconds < 60) return 'Just now';
    if (difference.inMinutes < 60) return '${difference.inMinutes} min ago';
    if (difference.inHours < 24) return '${difference.inHours} hours ago';
    if (difference.inDays < 7) return '${difference.inDays} days ago';
    
    return formatDate(date);
  }

  // Number Formats --------------------------------

  /// Formats currency with optional decimal digits
  static String formatCurrency(double amount, {String symbol = '\$', int decimalDigits = 2}) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: symbol,
      decimalDigits: decimalDigits,
    ).format(amount);
  }

  /// Formats large numbers (e.g., 1.5K, 2.3M)
  static String formatCompactNumber(double number) {
    return NumberFormat.compact().format(number);
  }

  /// Formats percentage (e.g., '25.5%')
  static String formatPercentage(double value, {int decimalDigits = 1}) {
    return NumberFormat.decimalPercentPattern(
      decimalDigits: decimalDigits,
    ).format(value);
  }

  // String Formats --------------------------------

  /// Formats phone number (supports international numbers)
  static String formatPhoneNumber(String phoneNumber, {String countryCode = 'US'}) {
    // Remove all non-digit characters
    final digits = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    switch (countryCode.toUpperCase()) {
      case 'US':
        if (digits.length == 10) {
          return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
        } else if (digits.length == 11) {
          return '+${digits.substring(0, 1)} (${digits.substring(1, 4)}) ${digits.substring(4, 7)}-${digits.substring(7)}';
        }
        break;
      // Add more country formats as needed
      case 'UK':
        if (digits.length >= 10) {
          return '+44 ${digits.substring(0, 4)} ${digits.substring(4)}';
        }
        break;
    }

    // Fallback for unsupported formats
    return phoneNumber;
  }

  /// Capitalizes first letter of each word
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) => word.isNotEmpty 
        ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
        : '').join(' ');
  }

  /// Formats text to title case
  static String toTitleCase(String text) {
    return text.replaceAllMapped(
      RegExp(r'\b\w'),
      (match) => match.group(0)?.toUpperCase() ?? '',
    );
  }


  // Validation Helpers --------------------------------

  /// Checks if string is a valid email format
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  /// Checks if string is a valid phone number
  static bool isValidPhoneNumber(String phone, {String countryCode = 'US'}) {
    final digits = phone.replaceAll(RegExp(r'[^\d]'), '');
    switch (countryCode.toUpperCase()) {
      case 'US': return digits.length == 10 || digits.length == 11;
      case 'UK': return digits.length >= 10;
      default: return digits.length >= 8;
    }
  }
}