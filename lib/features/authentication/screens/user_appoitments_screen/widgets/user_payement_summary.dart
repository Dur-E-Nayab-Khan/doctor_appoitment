import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
// widgets/payment_summary.dart
class PaymentSummary extends StatelessWidget {
  const PaymentSummary({
    super.key,
    required this.consultationFee,
    required this.tax,
  });

  final double consultationFee;
  final double tax;

  @override
  Widget build(BuildContext context) {
    final total = consultationFee + tax;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment Summary', 
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: Nsize.spaceBtwItems),
            _buildPaymentRow('Consultation Fee', consultationFee),
            _buildPaymentRow('Tax', tax),
            const Divider(),
            _buildPaymentRow('Total', total, isTotal: true),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentRow(String label, double amount, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Nsize.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: isTotal 
              ? const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
              : null),
          Text('\$${amount.toStringAsFixed(2)}', 
              style: isTotal 
                  ? const TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 16,
                      color: NColors.primary)
                  : null),
        ],
      ),
    );
  }
}