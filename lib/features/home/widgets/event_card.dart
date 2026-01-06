import 'package:flutter/material.dart';
import 'package:kenya_fatsoma/models/event_model.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final VoidCallback? onTap; // ✅ Add this

  const EventCard({super.key, required this.event, this.onTap}); // ✅ Pass it

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // ✅ Wrap with GestureDetector
      onTap: onTap, // ✅ Use the callback
      child: Container(
        width: 180,
        margin: const EdgeInsets.only(right: 12, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 16 / 12,
                child: Image.network(
                  event.imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      color: Colors.grey[900],
                      child: const Center(child: CircularProgressIndicator(color: Colors.white70)),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              event.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              event.venue,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              event.time,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}