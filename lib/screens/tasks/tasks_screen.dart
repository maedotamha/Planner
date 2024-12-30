import 'package:flutter/material.dart';
import '../../widgets/screen_scaffold.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      title: 'Tasks',
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // TODO: Add new task
          },
        ),
      ],
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'In Progress'),
                Tab(text: 'Completed'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _TaskList(status: 'all'),
                  _TaskList(status: 'in_progress'),
                  _TaskList(status: 'completed'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TaskList extends StatelessWidget {
  final String status;

  const _TaskList({required this.status});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Checkbox(
              value: status == 'completed',
              onChanged: (value) {
                // TODO: Update task status
              },
            ),
            title: Text('Task ${index + 1}'),
            subtitle: Text('Due: ${DateTime.now().add(Duration(days: index)).toString().split(' ')[0]}'),
            trailing: PopupMenuButton(
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
          ),
        );
      },
    );
  }
}