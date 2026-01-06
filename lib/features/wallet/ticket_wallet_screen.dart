import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:kenya_fatsoma/core/theme/app_colors.dart';

class TicketWalletScreen extends StatelessWidget {
  const TicketWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tickets'),
        backgroundColor: AppColors.background,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTicketCard(
            event: 'Afrobeats Festival',
            date: 'Sun, Jan 19 • 4:00 PM',
            type: 'Regular',
            ticketId: 'TKT-AFRO-7890',
          ),
          const SizedBox(height: 16),
          _buildTicketCard(
            event: 'Campus Bash 2026',
            date: 'Sat, Jan 18 • 8:00 PM',
            type: 'VIP',
            ticketId: 'TKT-CAMPUS-1234',
          ),
        ],
      ),
    );
  }

  Widget _buildTicketCard({
    required String event,
    required String date,
    required String type,
    required String ticketId,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // ✅ Real QR Code
            QrImageView(
              data: ticketId,
              version: QrVersions.auto,
              size: 100,
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    type,
                    style: const TextStyle(color: AppColors.gold, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'ID: $ticketId',
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}