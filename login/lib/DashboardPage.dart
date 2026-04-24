import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    final username = arguments as String? ?? 'User';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Selamat datang, $username!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Login berhasil',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}