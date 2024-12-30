import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productivity Hub'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              // TODO: Toggle theme
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // TODO: Navigate to profile
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: const [
          FeatureCard(
            icon: Icons.calendar_today,
            title: 'Calendar',
            route: '/calendar',
          ),
          FeatureCard(
            icon: Icons.task_alt,
            title: 'Tasks',
            route: '/tasks',
          ),
          FeatureCard(
            icon: Icons.flag,
            title: 'Goals',
            route: '/goals',
          ),
          FeatureCard(
            icon: Icons.note,
            title: 'Notes',
            route: '/notes',
          ),
          FeatureCard(
            icon: Icons.timer,
            title: 'Deadlines',
            route: '/deadlines',
          ),
          FeatureCard(
            icon: Icons.notifications,
            title: 'Reminders',
            route: '/reminders',
          ),
        ],
      ),
    );
  }
}