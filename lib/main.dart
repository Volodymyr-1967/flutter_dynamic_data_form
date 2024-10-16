import 'package:flutter/material.dart';
import 'widgets/dynamic_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Форма с динамическими данными'),
        ),
        body: const DynamicForm(),
      ),
    );
  }
}
