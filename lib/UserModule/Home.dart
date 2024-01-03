import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:usermodule/UserModule/Service.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(50),
          itemBuilder: (context, i) {
            return SizedBox(
                height: 130,
                child: Card(
                  color: const Color(0xffCFE2FF),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/man1.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            '2+ years experience',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          const Text(
                            'fuel leaking',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Services()));
                            },
                            child: Container(
                              height: 45,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                  child: Text(
                                "available",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                );
          }),
    );
  }
}
