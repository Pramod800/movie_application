import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 300,
            width: 180,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            height: 300,
            width: 180,
            decoration: const BoxDecoration(color: Colors.black),
          ),
        ],
      ),
    ));
  }
}
