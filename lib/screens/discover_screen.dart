import 'package:chainhouse_flutter_app/widgets/image_item.dart';
import 'package:chainhouse_flutter_app/widgets/new_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DiscoverScreen();
}

class _DiscoverScreen extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover',
                style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.w400)),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'WHAT\'S A NEW TODAY',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w900)),
              ),
              SizedBox(height: 387, child: _buildListNew(context)),
              StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  itemBuilder: (context, index) =>
                      ImageItem(image: images[index]),
                  staggeredTileBuilder: ((index) => StaggeredTile.fit(2)))
            ]),
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
  Widget _buildListNew(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) => NewItem(),
    );
  }
}
