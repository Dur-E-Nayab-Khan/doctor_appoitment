import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/user_payement_summary.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class DocumentsSection extends StatelessWidget {
  const DocumentsSection({
    super.key,
    required this.documents,
  });

  final List<String> documents;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Documents', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: Nsize.spaceBtwItems),
            ...documents
                .map((doc) => ListTile(
                      leading:
                          const Icon(Icons.picture_as_pdf, color: Colors.red),
                      title: Text(doc),
                      trailing: IconButton(
                        icon: const Icon(Icons.download),
                        onPressed: () {/* Download logic */},
                      ),
                    ))
                .toList(),
            const SizedBox(height: Nsize.spaceBtwSections),
            const PaymentSummary(
              consultationFee: 120.00,
              tax: 12.00,
            ),
          ],
        ),
      ),
    );
  }
}
