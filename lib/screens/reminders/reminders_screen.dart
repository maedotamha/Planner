import 'package:flutter/material.dart';
import '../../widgets/screen_scaffold.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Reminders',
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // TODO: Add new reminder
          },
        ),
      ],
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                index % 2 == 0 ? Icons.repeat : Icons.alarm,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text('Reminder ${index + 1}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(DateTime.now().add(Duration(hours: index * 2)).toString().split('.')[0]),
                  if (index % 2 == 0)
                    Text(
                      'Repeats: Daily',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                ],
              ),
              trailing: Switch(
                value: true,
                onChanged: (value) {
                  // TODO: Toggle reminder
                },
              ),
            ),
          );
        },
      ),
    );
  }
}