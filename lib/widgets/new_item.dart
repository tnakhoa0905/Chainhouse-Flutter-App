import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.amber),
      margin: const EdgeInsets.only(right: 18),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
              width: MediaQuery.of(context).size.width,
              height: 343,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/new.png')),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('assets/images/home_avt.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ridhwan Nordin',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  Text('@ridzjcob',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 11)))
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
