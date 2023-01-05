import 'package:flutter/material.dart';

class BookTableScreen extends StatefulWidget {
  const BookTableScreen({Key? key}) : super(key: key);

  @override
  State<BookTableScreen> createState() => _BookTableScreenState();
}

class _BookTableScreenState extends State<BookTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Book a table',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
