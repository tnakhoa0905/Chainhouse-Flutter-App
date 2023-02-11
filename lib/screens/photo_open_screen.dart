import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoOpenScreen extends StatefulWidget {
  const PhotoOpenScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PhotoOpenScreen();
}

class _PhotoOpenScreen extends State<PhotoOpenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                image: const AssetImage('assets/images/discover/image6.png')),
            Positioned(
              left: 16,
              top: 32,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/home_avt.png'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ridhwan Nordin',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                      Text(
                        '@ridzjcob',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 32,
              right: 16,
              child: GestureDetector(
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
