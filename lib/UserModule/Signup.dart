import 'package:flutter/material.dart';
import 'package:usermodule/UserModule/Home.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffCFE2FF),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              child: Center(
                child: Image.asset("assets/tow2.png"),
              ),
            ),
            const SizedBox(
              child: Center(
                child: Text(
                  'SIGN UP ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Enter Username',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter user name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Enter Phone number',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter your phone number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Enter your email',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter your email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homee()));
                    },
                    child: Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 6, 37, 62),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        "SignUp",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
