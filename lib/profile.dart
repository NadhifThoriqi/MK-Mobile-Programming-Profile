import 'package:flutter/material.dart';
import 'package:profile/homeFile1.dart';
import 'package:profile/page1.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Data from the image
  final String name = 'NADHIF THORIQI';
  final String nim = '202402016';
  final String programStudi = 'TEKNIK INFORMATIKA';
  final String fakultas = 'ILMU KOMPUTER';
  final String angkatan = '2024/2025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Profil'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // --- Header Section (Image Placeholder) ---
            _buildHeaderSection(context),

            // --- Profile Information Section ---
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Horizontal Separator line, similar to the image
                  const Divider(color: Colors.blue, thickness: 3, height: 10),
                  const SizedBox(height: 20),

                  // Display the profile details
                  _buildProfileRow(label: 'Nama', value: name),
                  _buildProfileRow(label: 'NIM', value: nim),
                  _buildProfileRow(label: 'Program Studi', value: programStudi),
                  _buildProfileRow(label: 'Fakultas', value: fakultas),
                  _buildProfileRow(label: 'Angkatan', value: angkatan),
                  Row( 
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Menumpuk Halaman
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_)=>HalamaSatu())
                          );
                        },
                        child: Text("Halaman 1"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Menumpuk Halaman
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_)=>HalamaDua())
                          );
                        },
                        child: Text("Halaman 2"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to create the waterfall background and profile icon placeholder
  Widget _buildHeaderSection(BuildContext context) {
    // You can replace this with an actual NetworkImage or AssetImage
    const String waterfallImageUrl = 'assets/bacground.jpeg';
    const String userImageUrl = 'assets/users.jpeg';

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Background Image (Waterfall)
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(waterfallImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Profile Icon Placeholder (centered over the background)
        // Profile Icon Placeholder (centered over the background)
        // Mengganti dengan NetworkImage
        Positioned(
          top: 80,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(userImageUrl), // <-- Ganti URL
          ),
        ),
        // Spacer to push content down below the Stack
        const SizedBox(height: 150),
      ],
    );
  }

  // Widget to display a single row of profile data (Label : Value)
  Widget _buildProfileRow({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Label text (Nama, NIM, etc.)
          SizedBox(
            width: 120, // Fixed width for labels for alignment
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600, // Slightly bolder label
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          ),

          // Colon separator
          const Text(
            ':',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 10),

          // Value text (NADHIF THORIQI, 202402016, etc.)
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold, // Value is the main focus
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
