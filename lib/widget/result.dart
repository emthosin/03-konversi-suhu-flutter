import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.nama,
    required this.hasil,
  }) : super(key: key);

  final double hasil;
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: prefer_const_constructors
        Text(nama),
        Text(
          '$hasil',
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 60),
        ),
      ],
    );
  }
}
