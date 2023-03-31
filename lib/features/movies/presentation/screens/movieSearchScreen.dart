import 'package:flutter/material.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Search Movies",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: [
                  // Text(
                  //   "Search Movies",
                  //   style: TextStyle(fontSize: 25, color: Colors.white),
                  //   textAlign: TextAlign.start,
                  // ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
