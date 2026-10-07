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
      home: Scaffold(
        appBar: AppBar(title: const Text('Tugas Custom Widget')),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            Text('1. Kustomisasi TextStyle', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            FontTextWidget(),
            Divider(),
            SpacingTextWidget(),
            Divider(),
            DecorationTextWidget(),
          ],
        ),
      ),
    );
  }
}

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Normal', style: TextStyle(fontSize: 20)),
        Text('Bold', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('Italic', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
      ],
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Letter Spacing', style: TextStyle(fontSize: 20, letterSpacing: 5)),
        SizedBox(height: 10),
        Text('Word Spacing Example', style: TextStyle(fontSize: 20, wordSpacing: 10)),
        SizedBox(height: 10),
        Text('Line 1\nLine 2\nLine 3', style: TextStyle(fontSize: 20, height: 2)),
      ],
    );
  }
}

class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Underline', style: TextStyle(fontSize: 20, decoration: TextDecoration.underline)),
        SizedBox(height: 15),
        Text('Background', style: TextStyle(fontSize: 20, backgroundColor: Colors.yellow)),
        SizedBox(height: 15),
        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(offset: Offset(3, 3), blurRadius: 5, color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}