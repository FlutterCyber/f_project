import 'package:f_project/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.history,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.id);
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(
              color: Color(0xff69b00b),
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontFamily: "ProtestStrike"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {},
      ),
    );
  }
}
