import 'package:flutter/material.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';

class SignupOptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const SignupOptionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Nsize.defaultSpace,
            vertical: Nsize.defaultSpace,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: NColors.primary.withOpacity(0.1),
                child: Icon(icon, size: Nsize.iconMd, color: NColors.primary),
              ),
              const SizedBox(width: Nsize.spaceBtwItems),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: Nsize.spaceBtwItems),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: Nsize.iconMd),
            ],
          ),
        ),
      ),
    );
  }
}
