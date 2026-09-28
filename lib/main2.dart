import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bai Yodata'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profile Image
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: const AssetImage('assets/images/pro.jpg'),
              ),
            ),
            const SizedBox(height: 20),

            // Personal Information
            const Text(
              'PERSONAL INFORMATION',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Full Name: Florita, Ralph Felix C.', style: TextStyle(fontSize: 16)),
            const Text('Age: 15', style: TextStyle(fontSize: 16)),
            const Text('Gender: Male', style: TextStyle(fontSize: 16)),
            const Text('Address: Caloocan City, Metro Manila', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            // Education
            const Text(
              'EDUCATIONAL BACKGROUND',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Bachelor of Science in Computer Science', style: TextStyle(fontSize: 16)),
            const Text('Global Reciprocal College', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            // Skills
            const Text(
              'SKILLS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('• Flutter Development\n• Web Development\n• Problem Solving',
                style: TextStyle(fontSize: 16, height: 1.5)),
            const SizedBox(height: 30),

            // Hobbies
            const Text(
              'HOBBIES & INTERESTS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('• Reading books\n• Playing basketball\n• Coding projects',
                style: TextStyle(fontSize: 16, height: 1.5)),
            const SizedBox(height: 30),

            // Family Background
            const Text(
              'FAMILY BACKGROUND',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          
            const Text('Mother: Rovelyn C. Florita', style: TextStyle(fontSize: 16)),
            const Text('Number of Siblings: 2', style: TextStyle(fontSize: 16)),
            const Text('Position Among Siblings: Eldest', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            // Achievements
            const Text(
              'ACHIEVEMENTS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('• NCII CSS\n• Python Essentials\n• Flutter Bootcamp Certificate',
                style: TextStyle(fontSize: 16, height: 1.5)),
            const SizedBox(height: 30),

            // Career Objective
            const Text(
              'CAREER OBJECTIVE',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'To become a professional web and mobile app developer, enhancing my skills in software development and problem-solving.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            // Projects
            const Text(
              'PROJECTS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('• FIX TRACK – Parking slot reservation system', style: TextStyle(fontSize: 16)),
            const Text('• TipidTracker – Personal budget and expense manager', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            // Contact Information
            const Text(
              'CONTACT INFORMATION',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Email: Yourspport08@example.com', style: TextStyle(fontSize: 16)),
            const Text('Contact Number: 0912 345 6789', style: TextStyle(fontSize: 16)),
            const Text('Address: Caloocan City, Metro Manila', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            Center(
              child: const Text(
                'I hereby certify that the information provided above is true and correct to the best of my knowledge.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                'Florita, Ralph Felix C.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(child: Text('Applicant')),
          ],
        ),
      ),
    );
  }
}
