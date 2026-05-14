import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/task_model.dart';

class StatsCard extends StatelessWidget {
  final List<TaskModel> tasks;

  const StatsCard({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    final total = tasks.length;
    final completed =
        tasks.where((t) => t.status == TaskStatus.completed).length;
    final pending =
        tasks.where((t) => t.status == TaskStatus.pending).length;
    final inProgress =
        tasks.where((t) => t.status == TaskStatus.inProgress).length;

    return Row(
      children: [
        _statBox('Total', total.toString(), Colors.purple.shade100,
            Colors.purple),
        const SizedBox(width: 10),
        _statBox('Pending', pending.toString(), Colors.orange.shade100,
            Colors.orange),
        const SizedBox(width: 10),
        _statBox('In Progress', inProgress.toString(), Colors.blue.shade100,
            Colors.blue),
        const SizedBox(width: 10),
        _statBox('Done', completed.toString(), Colors.green.shade100,
            Colors.green),
      ],
    );
  }

  Widget _statBox(
      String label, String count, Color bgColor, Color textColor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              count,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: textColor.withValues(alpha: 0.8),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
