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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 310,
            height: 430,
            color: const Color(0xFFFFF7FF),
            child: Column(
              children: [

                // =========================
                // Top App Bar
                // =========================
                Container(
                  height: 60,
                  color: const Color(0xFFFFBE0B),
                  padding: const EdgeInsets.only(left: 10,top:10,right: 10),

                  child: Column(
                    children: [

                      // Status Bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row( // Removed 'const' here to allow the Container box
                            children: [
                              const Text(
                                "2:32",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Icon(
                                Icons.shield_outlined,
                                size: 12,
                                color: Colors.black87,
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.sd_card,
                                size: 13,
                                color: Colors.black87,
                              ),
                              const SizedBox(width: 5), // Added spacing after SD card

                              // Black Square Box with White Letter 'A'
                              Container(
                                width: 12.0, // Scaled down to match status bar icon heights (12-13px)
                                height: 12.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(2.0), // Clean, slightly rounded sharp box
                                ),
                                child: const Text(
                                  'A',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.0, // Scaled font size down to fit the small box perfectly
                                    fontWeight: FontWeight.bold,
                                    height: 1.0,  // Prevents baseline clipping in small sizes
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),


                          // Small circle
                          Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black54,
                              ),
                            ),
                          ),

                          const Row(
                            children: [
                              Icon(
                                Icons.wifi_password_rounded,
                                size: 12,
                                color: Colors.black87,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.battery_full,
                                size: 13,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // App Bar title and icons
                      Row(
                        children: [
                          const Text(
                            "My Profile",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),

                          const Spacer(),

                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 22,
                              color: Colors.black87,
                            ),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),

                          const SizedBox(width: 20),

                          const Icon(
                            Icons.settings,
                            size: 20,
                            color: Color(0xFF333333),
                          ),

                          const SizedBox(width: 20),

                          const Icon(
                            Icons.phone,
                            size: 19,
                            color: Color(0xFF333333),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                // =========================
                // First Section
                // =========================
                const SizedBox(height: 5),

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