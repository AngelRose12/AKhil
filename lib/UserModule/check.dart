import 'package:flutter/material.dart';
import 'package:usermodule/UserModule/login.dart';

class Look extends StatefulWidget {
  const Look({super.key});

  @override
  State<Look> createState() => _LookState();
}

class _LookState extends State<Look> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffCFE2FF),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/tow2.png"),
                ),
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 6, 37, 62),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "Mechanic",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 6, 37, 62),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "User",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 6, 37, 62),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "Admin",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
