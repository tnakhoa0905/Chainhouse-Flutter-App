import 'package:chainhouse_flutter_app/screens/chat_screen.dart';
import 'package:chainhouse_flutter_app/screens/discover_screen.dart';
import 'package:chainhouse_flutter_app/screens/prolife_screen.dart';
import 'package:chainhouse_flutter_app/screens/search_screen.dart';
import 'package:flutter/material.dart';

class RouteApp extends StatefulWidget {
  const RouteApp({super.key});

  @override
  State<StatefulWidget> createState() => _RouteApp();
}

class _RouteApp extends State<RouteApp> {
  final items = [
    DiscoverScreen(),
    SearchScreen(),
    ChatScreen(),
    ProlifeScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: items[currentIndex],
            bottomNavigationBar: Container(
              margin: const EdgeInsets.fromLTRB(11, 9, 11, 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildItemBottomNavigation(
                      0, 'assets/images/routes/discover.png'),
                  buildItemBottomNavigation(
                      1, 'assets/images/routes/search.png'),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [Colors.pink, Colors.red, Colors.orange])),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.add)),
                  ),
                  buildItemBottomNavigation(
                      2, 'assets/images/routes/comment.png'),
                  buildItemBottomNavigation(3, 'assets/images/routes/bell.png')
                ],
              ),
            )));
  }

  Widget buildItemBottomNavigation(int index, String image) {
    return GestureDetector(
      onTap: () {
        currentIndex = index;
        print(currentIndex);
        setState(() {});
      },
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
