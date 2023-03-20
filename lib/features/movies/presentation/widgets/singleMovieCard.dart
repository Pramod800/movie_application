import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            height: 300,
            width: 200,
            decoration: const BoxDecoration(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
