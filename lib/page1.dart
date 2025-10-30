import 'package:flutter/material.dart';

class HalamaDua extends StatelessWidget {
  const HalamaDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman 1")),
      // body: Container(
      //   child: Column(children: [Text("1"), Text("2"), Text("3"), Text("4")]),
      // ),
      body: Column(children: [Text("1"), Text("2"), Text("3"), Text("4")]),
    );
  }
}
