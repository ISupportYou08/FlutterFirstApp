
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StepSis1 extends StatelessWidget {
  StepSis1({super.key});

  final name = TextEditingController();
  final sect = TextEditingController();
  final cou = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Registration')),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Step 1: User Registration'),

          TextField(controller: name,decoration: InputDecoration(labelText: 'Name'),
          ),

          TextField(controller: sect,decoration: InputDecoration(labelText: 'Section'),
          ),

          TextField(controller: cou,decoration: InputDecoration(labelText: 'Course'),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              if (name.text.trim().isEmpty ||
                  sect.text.trim().isEmpty ||
                  cou.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fill in all fields')),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StepSis2(
                      name.text.trim(),
                      sect.text.trim(),
                      cou.text.trim(),
                    ),
                  ),
                );
              }
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class StepSis2 extends StatelessWidget {
  final String name;
  final String sect;
  final String cou;

  StepSis2(this.name, this.sect, this.cou, {super.key});

  final sub1 = TextEditingController();
  final taym1 = TextEditingController();
  final sub2 = TextEditingController();
  final taym2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subject Enrollment')),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Step 2: Subject Enrollment'),

          TextField(controller: sub1,decoration: InputDecoration(labelText: 'Subject 1'),
          ),

          TextField(controller: taym1,decoration: InputDecoration(labelText: 'Time 1'),
          ),

          TextField(    controller: sub2,decoration: InputDecoration(labelText: 'Subject 2'),
          ),

          TextField(controller: taym2,decoration: InputDecoration(labelText: 'Time 2'),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              if (sub1.text.trim().isEmpty ||
                  taym1.text.trim().isEmpty ||
                  sub2.text.trim().isEmpty ||
                  taym2.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Fill in all fields')),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StepSis3(
                      name,
                      sect,
                      cou,
                      sub1.text.trim(),
                      taym1.text.trim(),
                      sub2.text.trim(),
                      taym2.text.trim(),
                    ),
                  ),
                );
              }
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class StepSis3 extends StatelessWidget {
  final String name;
  final String sect;
  final String cou;
  final String sub1;
  final String taym1;
  final String sub2;
  final String taym2;

  StepSis3(
    this.name,
    this.sect,
    this.cou,
    this.sub1,
    this.taym1,
    this.sub2,
    this.taym2, {
    super.key,
  });

  Future<void> saveData(BuildContext context) async {
    try {
      await FirebaseFirestore.instance.collection('students').add({
        'name': name,
        'section': sect,
        'course': cou,
        'subject1': sub1,
        'time1': taym1,
        'subject2': sub2,
        'time2': taym2,
      });

      if (!context.mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Saved successfully!')),
      );
    } catch (e) {
      if (!context.mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subject Verification')),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Step 3: Subject Verification'),

          SizedBox(height: 20),

          Text('Name: $name'),
          Text('Section: $sect'),
          Text('Course: $cou'),

          Divider(),

          Text('Subject 1: $sub1'),
          Text('Time 1: $taym1'),
          Text('Subject 2: $sub2'),
          Text('Time 2: $taym2'),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              saveData(context);
            },
            child: Text('Save to Firebase'),
          ),
        ],
      ),
    );
  }
}
