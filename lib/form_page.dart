import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormPage extends StatefulWidget{
  const FormPage({super.key});

  @override
  State<FormPage>createState()=> _FormPageState();
}

class _FormPageState extends State<FormPage>{


@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: const Text('Student Form')),
    );
  }
}