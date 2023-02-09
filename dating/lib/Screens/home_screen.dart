import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.9,
          title: const Text(
            'Han date',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/profile_image.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Column(
                children: const [
                  Text(
                    '컴퓨터소프트웨어학부',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                  Text(
                    '순간여행자',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
