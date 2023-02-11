import 'package:chainhouse_flutter_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoggedOutScreen extends StatefulWidget {
  const LoggedOutScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoggedOutScreen();
}

class _LoggedOutScreen extends State<LoggedOutScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Expanded(
          flex: 8,
          child: Stack(
            children: [
              SizedBox(
                width: size.width,
                child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/home_background.png')),
              ),
              Positioned(
                bottom: size.width * 20 / 821,
                left: size.height * 16 / 375 - 16,
                child: SizedBox(
                  height: 28,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 14,
                        backgroundImage:
                            AssetImage('assets/images/home_avt.png'),
                      ),
                      SizedBox(
                        width: size.width * 8 / 821,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Pawel Czerwinski',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '@pawel_czerwinski',
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.center,
                  child:
                      Image(image: AssetImage('assets/images/icon_logo.png'))),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 167 / 375,
                height: size.height * 52 / 821,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shadowColor: const MaterialStatePropertyAll<Color?>(
                            Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    side:
                                        const BorderSide(color: Colors.black))),
                        backgroundColor: const MaterialStatePropertyAll<Color?>(
                            Colors.white)),
                    onPressed: () {},
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    )),
              ),
              SizedBox(
                width: size.width * 9 / 375,
              ),
              SizedBox(
                width: size.width * 167 / 375,
                height: size.height * 52 / 821,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shadowColor: const MaterialStatePropertyAll<Color?>(
                            Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0)))),
                        backgroundColor: const MaterialStatePropertyAll<Color?>(
                            Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    )),
              )
            ],
          ),
        )
      ],
    )));
  }
}
