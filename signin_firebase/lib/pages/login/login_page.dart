import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: w,
            height: h * 0.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/loginimg.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Text('Sign in to your account',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(child: Container()),
                    const Text('Forgot your Password?',
                        style: TextStyle(fontSize: 17))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: w * 0.5,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    image: AssetImage('assets/images/loginbtn.png'),
                    fit: BoxFit.cover)),
            child: const Center(
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 50),
          RichText(
            text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
                children: [
                  TextSpan(
                      text: 'Create',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ],
      ),
    ));
  }
}
