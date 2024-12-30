import 'package:flutter/material.dart';
import '../../widgets/screen_scaffold.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Goals',
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // TODO: Add new goal
          },
        ),
      ],
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.flag),
                      const SizedBox(width: 8),
                      Text(
                        'Goal ${index + 1}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Target Date: ${DateTime.now().add(Duration(days: 30 * (index + 1))).toString().split(' ')[0]}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  LinearProgressIndicator(
                    value: (index + 1) * 0.25,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Progress: ${((index + 1) * 25)}%',
                    style: Theme.of(context).textTheme.bodySmall,
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