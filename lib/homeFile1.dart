import 'package:flutter/material.dart';

class HalamaSatu extends StatelessWidget {
  const HalamaSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman 1")),
      // body: Container(
      //   child: Row(children: [Text("1"), Text("2"), Text("3"), Text("4")]),
      // ),
      body: Row(children: [Text("1"), Text("2"), Text("3"), Text("4")]),
    );
  }
}
