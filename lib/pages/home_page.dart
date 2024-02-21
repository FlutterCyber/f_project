import 'package:f_project/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActive = false;

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
            IconButton(
              onPressed: () {
                setState(() {
                  isActive = !isActive;
                  print(isActive);
                });
              },
              icon: const Icon(
                Icons.change_circle_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SecondPage.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Text(
                    "Home Page",
                    style: TextStyle(
                        color: Color(0xff69b00b),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ProtestStrike"),
                  ),
                ),
                isActive
                    ? Center(child: CircularProgressIndicator())
                    : SizedBox(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 75,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ));
  }
}
