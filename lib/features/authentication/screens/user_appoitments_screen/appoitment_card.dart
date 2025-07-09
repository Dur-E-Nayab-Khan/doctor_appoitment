import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String dateTime;
  final ImageProvider image;
  final VoidCallback? onCardTap;
  final VoidCallback? onIconTap;
  final double imageSize;
  final double iconSize;

  const AppointmentCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.dateTime,
    required this.image,
    this.onCardTap,
    this.onIconTap,
    this.imageSize = 56,
    this.iconSize = Nsize.iconXs,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          const EdgeInsets.symmetric(horizontal: Nsize.md, vertical: Nsize.sm),
      child: InkWell(
        onTap: onCardTap,
        child: Padding(
          padding: const EdgeInsets.all(Nsize.defaultSpace / 2),
          child: Row(
            children: [
              // Image controlled by parent
              Image(
                image: image,
                fit: BoxFit.cover,
                width: imageSize,
                height: imageSize,
              ),

              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: Nsize.xs),
                    Text(
                      specialty,
                      style: const TextStyle(
                        color: NColors.darkgrey,
                      ),
                    ),
                    const SizedBox(height: Nsize.xs),
                    Text(
                      dateTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // Tappable icon
              InkWell(
                onTap: onIconTap, // Still works if null
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: iconSize,
                    color: onIconTap == null
                        ? Colors.grey
                        : null, // Optional: gray out if not tappable
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
