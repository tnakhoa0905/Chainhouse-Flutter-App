import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 44, 16, 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 54,
              child: TextField(
                onChanged: ((value) => {}),
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: 'Search all photos',
                    hintStyle: const TextStyle(
                      fontSize: 15,
                    ),
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
              height: 32,
            ),
            Text(
              'ALL RESULT',
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w900)),
            ),
            const SizedBox(
              height: 24,
            ),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 9, mainAxisSpacing: 9),
                itemCount: 15,
                itemBuilder: ((context, index) => const Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/discover/image5.png')))),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 52,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll<double>(3),
                      shadowColor:
                          const MaterialStatePropertyAll<Color?>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: const BorderSide(color: Colors.black))),
                      backgroundColor:
                          const MaterialStatePropertyAll<Color?>(Colors.white)),
                  onPressed: () {},
                  child: Text(
                    'SEE MORE',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Colors.black)),
                  )),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
