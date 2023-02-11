import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/image_item.dart';

class ProlifeScreen extends StatefulWidget {
  const ProlifeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProlifeScreen();
}

class _ProlifeScreen extends State<ProlifeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 44, 16, 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 64,
              backgroundImage: AssetImage('assets/images/home_avt.png'),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Jane',
              style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'SAN FRANCISCO, CA',
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ),
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
                          const MaterialStatePropertyAll<Color?>(Colors.black)),
                  onPressed: () {},
                  child: Text(
                    'FOLLOW JANE',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                  )),
            ),
            const SizedBox(
              height: 16,
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
                    'MESSAGE',
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
            StaggeredGridView.countBuilder(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 9,
                mainAxisSpacing: 9,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) =>
                    ImageItem(image: images[index]),
                staggeredTileBuilder: ((index) => const StaggeredTile.fit(2))),
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
          ],
        ),
      ),
    );
  }

  List<String> images = [
    'assets/images/discover/image1.png',
    'assets/images/discover/image2.png',
    'assets/images/discover/image3.png',
    'assets/images/discover/image4.png',
    'assets/images/discover/image5.png',
    'assets/images/discover/image6.png'
  ];
}
