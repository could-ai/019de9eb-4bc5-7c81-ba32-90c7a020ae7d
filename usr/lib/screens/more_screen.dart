import 'package:flutter/material.dart';
import 'fees_screen.dart';
import 'staff_screen.dart';
import 'documents_faq_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildListTile(
            context,
            icon: Icons.payments,
            title: 'Fees & Payments',
            subtitle: 'Tuition, registration, and payment methods',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FeesScreen()));
            },
          ),
          const Divider(height: 1),
          _buildListTile(
            context,
            icon: Icons.people,
            title: 'About & Staff',
            subtitle: 'Principal, admin office, and coordinators',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StaffScreen()));
            },
          ),
          const Divider(height: 1),
          _buildListTile(
            context,
            icon: Icons.help_outline,
            title: 'Documents & FAQ',
            subtitle: 'Forms, policies, and common questions',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DocumentsFaqScreen()));
            },
          ),
          const Divider(height: 1),
          _buildListTile(
            context,
            icon: Icons.settings,
            title: 'Settings',
            subtitle: 'App preferences and notifications',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, {required IconData icon, required String title, required String subtitle, required VoidCallback onTap}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Theme.of(context).colorScheme.primary),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
