import 'package:flutter/material.dart';

class pageHome extends StatefulWidget {
  const pageHome({super.key});

  @override
  State<pageHome> createState() => _pageHomeState();
}

class _pageHomeState extends State<pageHome> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Halaman Home"),
    );
  }
}