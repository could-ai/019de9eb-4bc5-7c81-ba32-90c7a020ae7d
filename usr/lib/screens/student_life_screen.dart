import 'package:flutter/material.dart';

class StudentLifeScreen extends StatelessWidget {
  const StudentLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Student Life'),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Facilities', icon: Icon(Icons.business)),
              Tab(text: 'Uniform', icon: Icon(Icons.checkroom)),
              Tab(text: 'Transport', icon: Icon(Icons.directions_bus)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _FacilitiesView(),
            _UniformView(),
            _TransportView(),
          ],
        ),
      ),
    );
  }
}

class _FacilitiesView extends StatelessWidget {
  const _FacilitiesView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildFacilityCard(
          context,
          'Library & Media Center',
          'Over 20,000 physical books, digital archives, and quiet study pods available for all students.',
          Icons.local_library,
        ),
        const SizedBox(height: 12),
        _buildFacilityCard(
          context,
          'Science Laboratories',
          'State-of-the-art physics, chemistry, and biology labs with modern equipment and safety gear.',
          Icons.science,
        ),
        const SizedBox(height: 12),
        _buildFacilityCard(
          context,
          'Sports Complex',
          'Indoor basketball courts, a swimming pool, and an outdoor track & field arena.',
          Icons.sports_basketball,
        ),
        const SizedBox(height: 12),
        _buildFacilityCard(
          context,
          'Canteen',
          'Serving nutritious, balanced meals prepared daily. Dietary restrictions are accommodated.',
          Icons.restaurant,
        ),
        const SizedBox(height: 12),
        _buildFacilityCard(
          context,
          'Medical Room',
          'Staffed by a registered nurse during school hours to handle minor injuries and medical needs.',
          Icons.medical_services,
        ),
      ],
    );
  }

  Widget _buildFacilityCard(BuildContext context, String title, String description, IconData icon) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 32),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(description, style: TextStyle(color: Colors.grey.shade700)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UniformView extends StatelessWidget {
  const _UniformView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Daily Uniform', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Divider(),
                const Text('Boys:', style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('• White button-down shirt\n• Navy blue trousers\n• School tie\n• Black leather shoes'),
                const SizedBox(height: 12),
                const Text('Girls:', style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('• White blouse\n• Plaid skirt or navy trousers\n• School blazer\n• Black leather shoes'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Physical Education (PE)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Divider(),
                const Text('• School-branded t-shirt\n• Navy track pants or shorts\n• White athletic socks\n• Non-marking sports shoes'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.store),
                    SizedBox(width: 8),
                    Text('Where to Buy', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 8),
                Text('Uniforms can be purchased at the School Uniform Shop located near the main entrance, or online via the parent portal.\n\nShop Hours: Mon, Wed, Fri (2:00 PM - 5:00 PM)'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TransportView extends StatelessWidget {
  const _TransportView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const Text(
          'School Bus Services',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'We provide safe, reliable transportation for students within a 15-mile radius of the school. All buses are air-conditioned and equipped with GPS tracking.',
        ),
        const SizedBox(height: 24),
        const Text(
          'Available Routes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildRouteCard(context, 'Route A - North District', 'Starts 6:45 AM • 8 Stops'),
        _buildRouteCard(context, 'Route B - East Suburbs', 'Starts 6:30 AM • 12 Stops'),
        _buildRouteCard(context, 'Route C - South Valley', 'Starts 7:00 AM • 5 Stops'),
        _buildRouteCard(context, 'Route D - West Hills', 'Starts 6:50 AM • 7 Stops'),
        const SizedBox(height: 24),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('How to Register', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('1. Fill out the Transport Request Form on the parent portal.'),
                const Text('2. Pay the term transport fee.'),
                const Text('3. Receive your child\\'s bus pass and route schedule.'),
                const SizedBox(height: 16),
                Center(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.download),
                    label: const Text('Download Full Schedule'),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRouteCard(BuildContext context, String route, String details) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: const Icon(Icons.directions_bus),
        title: Text(route, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(details),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
