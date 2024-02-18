import 'package:flutter/material.dart';

class ListViewCard extends StatefulWidget {
  const ListViewCard({super.key});

  @override
  State<ListViewCard> createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard> {
  //  // var img =
//     //     'https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blueAccent,
      child: const Column(
        children: [
          Text("Text"),
        ],
      ),
    );
  }
}
