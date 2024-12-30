import { Observable } from '@nativescript/core';
import { Frame } from '@nativescript/core';

export class MainViewModel extends Observable {
    constructor() {
        super();
    }

    onCalendarTap() {
        Frame.topmost().navigate('features/calendar/calendar-page');
    }

    onTasksTap() {
        Frame.topmost().navigate('features/tasks/tasks-page');
    }

    onGoalsTap() {
        Frame.topmost().navigate('features/goals/goals-page');
    }

    onNotesTap() {
        Frame.topmost().navigate('features/notes/notes-page');
    }

    onDeadlinesTap() {
        Frame.topmost().navigate('features/deadlines/deadlines-page');
    }

    onRemindersTap() {
        Frame.topmost().navigate('features/reminders/reminders-page');
    }
}