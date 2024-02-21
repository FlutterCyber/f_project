import 'dart:io';

import 'package:f_project/pages/fourth_page.dart';
import 'package:f_project/view/material_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:f_project/view/cupertino_alert_dialog.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Third Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, FourthPage.id);
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showCupertinoAlertDialog(context);
              },
              child: const Text("Cupertino"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showMaterialDialog(context);
              },
              child: const Text("Material"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  showMaterialDialog(context);
                } else if (Platform.isIOS) {
                  showCupertinoAlertDialog(context);
                }
              },
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
