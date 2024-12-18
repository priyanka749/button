import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('about'));
    
  }
}