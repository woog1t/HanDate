import 'package:dating/Screens/myprofile_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.9,
        title: const Text(
          'Han date',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ID',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'PW',
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF004a8b),
              fixedSize: const Size(250, 40),
              elevation: 10,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyProfile()));
            },
            child: const Text(
              'LOGIN',
              style: TextStyle(),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'ID찾기',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                )),
            TextButton(
              onPressed: () {},
              child: const Text(
                'PW찾기',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
