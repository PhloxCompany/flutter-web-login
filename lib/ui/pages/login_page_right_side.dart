import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPageRightSide extends StatelessWidget {
  const LoginPageRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.orange,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
                          child: Container(
                            alignment: Alignment.topLeft,
                            color: Colors.white.withOpacity(.3),
                            padding: const EdgeInsets.all(42),
                            child: const Text("Very good works are\nwaiting for you 🤝\nLogin Now",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28.00,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60.0),
                        child: Image.asset('assets/woman.png', width: 300,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 30,top: 100),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: const Text("🤞", style: TextStyle(fontSize: 24),),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 30,top: 300),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: const Text("🖐", style: TextStyle(fontSize: 24),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
