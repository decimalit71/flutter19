import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBE0B),
        elevation: 10,
        title: Text("My Profile"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 310,
            height: 430,
            color: const Color(0xFFFFF7FF),
            child: Column(
              children: [
                // =========================
                // Second Section
                // =========================
                const SizedBox(height: 5),

                Container(
                  width: 123,
                  height: 123,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE9DDFF),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.icecream_outlined,
                      size: 65,
                      color: Color(0xFF27006B),
                    ),
                  ),
                ),
                const Text(
                  "Ice cream is very delicious right?",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 34),

                Container(
                  width: 123,
                  height: 123,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE9DDFF),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          size: 55,
                          color: Color(0xFF27006B),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 55,
                          color: Color(0xFF27006B),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 9),

                const Text(
                  "Programming is not boring if you love it",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
