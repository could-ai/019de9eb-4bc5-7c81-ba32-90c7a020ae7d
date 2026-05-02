import 'package:flutter/material.dart';

class DocumentsFaqScreen extends StatelessWidget {
  const DocumentsFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Documents & FAQ'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Documents', icon: Icon(Icons.description)),
              Tab(text: 'FAQ', icon: Icon(Icons.question_answer)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _DocumentsView(),
            _FaqView(),
          ],
        ),
      ),
    );
  }
}

class _DocumentsView extends StatelessWidget {
  const _DocumentsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text('Important Documents', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        _buildDocItem('Fee Structure 2026-2027', 'PDF • 1.2 MB'),
        _buildDocItem('School Calendar 2026-2027', 'PDF • 0.8 MB'),
        _buildDocItem('Uniform Guidelines & Checklist', 'PDF • 2.1 MB'),
        _buildDocItem('Admission Policy', 'PDF • 1.5 MB'),
        _buildDocItem('Medical Information Form', 'PDF • 0.5 MB'),
        _buildDocItem('Transport Request Form', 'PDF • 0.4 MB'),
      ],
    );
  }

  Widget _buildDocItem(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: const Icon(Icons.download),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _FaqView extends StatelessWidget {
  const _FaqView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text('Frequently Asked Questions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        _buildFaqItem(
          'What is the absence policy?',
          'If your child is sick or unable to attend, please notify the school office via phone or the parent portal by 8:30 AM. For planned absences, submit a written request at least 3 days in advance.',
        ),
        _buildFaqItem(
          'How can I contact my child\\'s teacher?',
          'Teachers can be contacted via the internal messaging system on the parent portal, or you can email them directly. Please allow 24-48 hours for a response during the work week.',
        ),
        _buildFaqItem(
          'How do I pay school fees?',
          'Fees can be paid online through the parent portal, via bank transfer, or by cheque at the finance office. Check the Fees & Payments section for more details.',
        ),
        _buildFaqItem(
          'How do I request official school documents?',
          'Transcripts, letters of enrollment, and other official documents can be requested from the administration office. Please allow 3-5 business days for processing.',
        ),
        _buildFaqItem(
          'Is there an after-school care program?',
          'Yes, we offer an after-school care program for elementary students until 5:30 PM. Separate registration and fees apply.',
        ),
      ],
    );
  }

  Widget _buildFaqItem(String question, String answer) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        title: Text(question, style: const TextStyle(fontWeight: FontWeight.w600)),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(answer, style: TextStyle(color: Colors.grey.shade800, height: 1.4)),
          ),
        ],
      ),
    );
  }
}
