import 'package:flutter/material.dart';
import 'package:kenya_fatsoma/core/theme/app_colors.dart';

class CheckoutScreen extends StatelessWidget {
  final String eventName;
  final String ticketType;
  final String price;

  const CheckoutScreen({
    super.key,
    required this.eventName,
    required this.ticketType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: AppColors.background,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ticket Summary
            Text(
              'Ticket Summary',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 16),
            _buildSummaryRow('Event', eventName),
            _buildSummaryRow('Ticket', ticketType),
            _buildSummaryRow('Price', price),

            const SizedBox(height: 24),

            // Quantity Selector
            Text(
              'Quantity',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove, color: AppColors.gold),
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: const Text('1', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: AppColors.gold),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Phone Number
            Text(
              'Phone Number (M-Pesa)',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Enter phone number',
                hintStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.phone, color: Colors.white70),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.phone,
            ),

            const Spacer(),

            // Pay Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Trigger M-Pesa STK Push
                  Navigator.pushNamed(context, '/confirmation');
                },
                icon: const Icon(Icons.payment, color: AppColors.background),
                label: const Text('Pay with M-Pesa', style: TextStyle(color: AppColors.background, fontSize: 18, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.gold,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70)),
          Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}