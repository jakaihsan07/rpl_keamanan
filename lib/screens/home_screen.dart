import 'package:flutter/material.dart';
import 'user_list_screen.dart';

/// Halaman utama aplikasi RPL & Keamanan.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPL & Keamanan Kode'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.security,
              size: 80,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 16),
            const Text(
              'Praktikum Pemrograman Mobile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Pertemuan 6: Prinsip RPL & Keamanan Kode',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserListScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.people),
              label: const Text('Lihat Daftar Pengguna'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}