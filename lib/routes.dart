import 'package:flutter/material.dart';
import 'screens/calendar/calendar_screen.dart';
import 'screens/tasks/tasks_screen.dart';
import 'screens/goals/goals_screen.dart';
import 'screens/notes/notes_screen.dart';
import 'screens/deadlines/deadlines_screen.dart';
import 'screens/reminders/reminders_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/calendar': (context) => const CalendarScreen(),
  '/tasks': (context) => const TasksScreen(),
  '/goals': (context) => const GoalsScreen(),
  '/notes': (context) => const NotesScreen(),
  '/deadlines': (context) => const DeadlinesScreen(),
  '/reminders': (context) => const RemindersScreen(),
};