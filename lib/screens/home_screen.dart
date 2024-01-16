import 'package:flutter/material.dart';
import 'package:otp_auth/provider/auth_provider.dart';
import 'package:otp_auth/screens/welcome_screen.dart';
import 'package:otp_auth/widgets/background_image.dart';
import 'package:otp_auth/widgets/custom_button.dart';
import 'package:provider/provider.dart';

import '../widgets/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("Profile"),
            actions: [
              IconButton(
                onPressed: () {
                  ap.userSignOut().then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeScreen(),
                          ),
                        ),
                      );
                },
                icon: const Icon(Icons.exit_to_app),
              ),
            ],
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(height: 30),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Colors.black12,
                            ),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 10),
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(ap.userModel.profilePic),
                            radius: 65,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 145,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.black12),
                            color: Colors.black,
                          ),
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 35),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 18),
                              border: InputBorder.none,
                              hintText: ap.userModel.name,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.account_box,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                              hintStyle: mainText,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    border: InputBorder.none,
                                    hintText: ap.userModel.phoneNumber,
                                    prefixIcon: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                    hintStyle: mainText,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 20),
                                          border: InputBorder.none,
                                          hintText: ap.userModel.email,
                                          prefixIcon: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Icon(
                                              Icons.email_rounded,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                          ),
                                          hintStyle: mainText,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: SingleChildScrollView(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 20),
                                                  border: InputBorder.none,
                                                  hintText: ap.userModel.bio,
                                                  prefixIcon: const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                    child: Icon(
                                                      Icons.book_online,
                                                      color: Colors.black,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  hintStyle: mainText,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: CustomButton(
                        text: "Update your profile info",
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
