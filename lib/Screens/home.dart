import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        actions: [IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell))],
        title: Text("Catchathon",

                style: TextStyle(fontFamily: "ProductSans-Bold",fontSize: 20),
            ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        children: [],
      )),
    );
  }
}