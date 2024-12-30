import 'package:flutter/material.dart';
import '../../widgets/screen_scaffold.dart';

class DeadlinesScreen extends StatelessWidget {
  const DeadlinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Deadlines',
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // TODO: Add new deadline
          },
        ),
      ],
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          final daysLeft = 7 - index;
          final isOverdue = daysLeft < 0;
          
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: isOverdue 
                  ? Theme.of(context).colorScheme.error
                  : daysLeft <= 3 
                    ? Theme.of(context).colorScheme.warning 
                    : Theme.of(context).colorScheme.primary,
                child: Text(
                  '${daysLeft.abs()}d',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 12,
                  ),
                ),
              ),
              title: Text('Deadline ${index + 1}'),
              subtitle: Text(
                isOverdue 
                  ? 'Overdue by ${daysLeft.abs()} days'
                  : '$daysLeft days remaining',
              ),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  const PopupMenuItem(
                    value: 'complete',
                    child: Text('Mark Complete'),
                  ),
                  const PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}