import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List images = ['g.png', 't.png', 'f.png'];
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: w,
            height: h * 0.35,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/signup.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(height: h * 0.16),
                const CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile1.png'),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
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
                  hintText: 'Your email',
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.deepOrangeAccent,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
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
                  hintText: 'Password',
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Colors.deepOrangeAccent,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
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
                'Sign up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: h * 0.06),
          Text('Sign up using on the following method',
              style: TextStyle(fontSize: 17, color: Colors.grey[600])),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    backgroundImage:
                        AssetImage('assets/images/' + images[index]),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ));
  }
}
