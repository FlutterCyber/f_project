import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Second Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, SecondPage.id);
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 10, color: Colors.red),
                ),
                child: const Center(
                  child: Text(
                    "Container",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Image.network(
                "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Image.asset("assets/images/insta.avif"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Image(
              height: 100,
              width: 100,
              image: AssetImage("assets/images/123.jpg"),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            const Image(
              height: 100,
              width: 100,
              image: NetworkImage(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
