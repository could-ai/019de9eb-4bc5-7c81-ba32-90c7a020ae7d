import 'package:flutter/material.dart';

class AcademicsScreen extends StatelessWidget {
  const AcademicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Academics'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Curriculum', icon: Icon(Icons.book)),
              Tab(text: 'School Hours', icon: Icon(Icons.schedule)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _CurriculumView(),
            _SchoolHoursView(),
          ],
        ),
      ),
    );
  }
}

class _CurriculumView extends StatelessWidget {
  const _CurriculumView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildSection(
          context,
          'Curriculum Overview',
          'We follow a comprehensive international curriculum designed to foster critical thinking, creativity, and global awareness. Our programs are accredited by leading educational bodies.',
        ),
        const SizedBox(height: 16),
        _buildGradeSection(
          context,
          'Elementary (Grades 1-5)',
          ['Mathematics', 'Language Arts', 'Science', 'Social Studies', 'Art & Music', 'Physical Education'],
        ),
        const SizedBox(height: 12),
        _buildGradeSection(
          context,
          'Middle School (Grades 6-8)',
          ['Advanced Mathematics', 'Literature', 'Earth & Life Sciences', 'World History', 'Foreign Languages', 'Computer Science'],
        ),
        const SizedBox(height: 12),
        _buildGradeSection(
          context,
          'High School (Grades 9-12)',
          ['Calculus & Statistics', 'AP English', 'Physics & Chemistry', 'Economics', 'Specialized Electives', 'College Prep'],
        ),
        const SizedBox(height: 16),
        _buildSection(
          context,
          'Special Programs',
          '• STEM Initiative\n• Model United Nations\n• Advanced Placement (AP) Courses\n• International Exchange Programs',
        ),
      ],
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(height: 1.5)),
          ],
        ),
      ),
    );
  }

  Widget _buildGradeSection(BuildContext context, String grade, List<String> subjects) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.3),
      child: ExpansionTile(
        title: Text(grade, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: subjects.map((subject) => Chip(
                label: Text(subject, style: const TextStyle(fontSize: 12)),
                backgroundColor: Theme.of(context).colorScheme.surface,
              )).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class _SchoolHoursView extends StatelessWidget {
  const _SchoolHoursView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 8),
                    Text('Daily Timetable', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const Divider(height: 24),
                _buildTimeRow('Arrival / Homeroom', '8:00 AM - 8:30 AM'),
                _buildTimeRow('Morning Classes', '8:30 AM - 11:30 AM'),
                _buildTimeRow('Lunch & Recess', '11:30 AM - 12:30 PM'),
                _buildTimeRow('Afternoon Classes', '12:30 PM - 3:00 PM'),
                _buildTimeRow('Dismissal', '3:00 PM - 3:30 PM'),
                _buildTimeRow('Extracurriculars', '3:30 PM - 5:00 PM'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.event, color: Theme.of(context).colorScheme.secondary),
                    const SizedBox(width: 8),
                    Text('School Calendar', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const Divider(height: 24),
                _buildCalendarEvent('Fall Term Begins', 'September 5'),
                _buildCalendarEvent('Mid-Term Exams', 'Nov 15 - Nov 20'),
                _buildCalendarEvent('Winter Break', 'Dec 20 - Jan 3'),
                _buildCalendarEvent('Spring Term Begins', 'January 5'),
                _buildCalendarEvent('Spring Break', 'Mar 25 - Apr 1'),
                _buildCalendarEvent('Final Exams', 'Jun 10 - Jun 15'),
                _buildCalendarEvent('Last Day of School', 'June 20'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeRow(String period, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(period, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(time, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildCalendarEvent(String event, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(event, style: const TextStyle(fontWeight: FontWeight.w500))),
          Text(date, style: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
