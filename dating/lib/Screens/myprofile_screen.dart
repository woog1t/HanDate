import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_image.png')),
                accountName: Text("박선욱"),
                accountEmail: Text("psw3080@hanyang.ac.kr"),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: const Text('Home'),
                onTap: () {
                  print('Home button is clicked!');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: const Text('settings'),
                onTap: () {
                  print('settings button is clicked!');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: const Text('Q&A'),
                onTap: () {
                  print('Q&A button is clicked!');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.9,
          title: const Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: const Color(0xFFd95757),
                borderRadius: BorderRadius.circular(20)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        '💻컴퓨터소프트웨어학부',
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
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '19학번, 26세',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                '175cm',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '왕십리 거주',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                '싱글, 종교없음',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                '비흡연, 술 적당히 마셔요',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                '최근 활동 3시간 전',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '~',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
          ),
          Row(
            children: [
              Column(
                children: const [
                  Text(
                    '이런 애기 많이 들어요',
                    style: TextStyle(
                        color: Color.fromRGBO(13, 71, 161, 1),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
