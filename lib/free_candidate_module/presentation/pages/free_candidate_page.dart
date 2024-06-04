import 'package:flutter/material.dart';

class FreeCandidatePage extends StatefulWidget {
  const FreeCandidatePage({super.key});

  @override
  State<FreeCandidatePage> createState() => _FreeCandidatePageState();
}

class _FreeCandidatePageState extends State<FreeCandidatePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("FreeCandidatePage")),
    );
  }
}
