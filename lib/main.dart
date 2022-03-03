// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:konversi_suhu/widget/inputUser.dart';
import 'package:konversi_suhu/widget/result.dart';

import 'widget/convert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  TextEditingController inputController = new TextEditingController();

  konversi() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      _reamur = 4 / 5 * _inputUser;
      _kelvin = _inputUser + 273;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Konversi Suhu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: const Text(
                  "Konverter Suhu | 2031710032 - M. Thosin Yuhaililul Hilmi")),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Input(inputController: inputController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Result(
                      hasil: _kelvin,
                      nama: 'Kelvin',
                    ),
                    Result(
                      hasil: _reamur,
                      nama: 'Reamur',
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                Convertion(
                  konversi: konversi,
                  onPressed: konversi,
                ),
              ],
            ),
          ),
        ));
  }
}
