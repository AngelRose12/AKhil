import 'package:flutter/material.dart';
import 'package:usermodule/UserModule/Home.dart';
import 'package:usermodule/UserModule/Password.dart';
import 'package:usermodule/UserModule/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    'LOGIN ',
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter your name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const Text(
                'Enter your password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter your password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Password()));
                },
                child: const Text(
                  "forgot password",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Homee()));
                },
                child: Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 6, 37, 62),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              const Text("Do you have account?,",
                  style: TextStyle(color: Colors.black)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: const Text(
                  "SignUp",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ])));
  }
}
