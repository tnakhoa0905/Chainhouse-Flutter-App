import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 32,
          ),
          GestureDetector(
            onTap: () {},
            child: const Image(
              image: AssetImage('assets/images/back.png'),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Register',
            style: GoogleFonts.comfortaa(
                fontStyle: FontStyle.normal,
                textStyle:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid))),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: size.width,
            height: 52,
            child: ElevatedButton(
                style: ButtonStyle(
                    shadowColor:
                        const MaterialStatePropertyAll<Color?>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: const BorderSide(color: Colors.black))),
                    backgroundColor:
                        const MaterialStatePropertyAll<Color?>(Colors.black)),
                onPressed: () {},
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900),
                )),
          ),
          const SizedBox(
            height: 32,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'By signing up, you agree to Photo’s ',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black)),
            TextSpan(text: ' and ', style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black)),
            TextSpan(text: '.', style: TextStyle(color: Colors.black))
          ]))
        ]),
      ),
    ));
  }
}
