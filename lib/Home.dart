import 'package:app_vision_pub/view/homeView.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(73),
          child: AppBar(
            centerTitle: false,
            backgroundColor: Colors.deepPurple,
            //Color.fromARGB(255, 36, 8, 247)
            title: const Padding(
              padding: EdgeInsets.only(top: 21.0),
              child: Text(
                "Vision Pub",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 20),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                  child: const Text(
                    "Lancez vos pubs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 1,
          backgroundColor: Color.fromARGB(255, 193, 166, 166),
          color: Colors.white,
          onTap: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          items: const [
            Icon(
              Icons.home,
              color: Colors.blue,
            ),
            Icon(
              Icons.home_repair_service,
              color: Colors.black,
            ),
            Icon(
              Icons.supervised_user_circle_sharp,
              color: Colors.black,
            ),
            Icon(
              Icons.messenger_sharp,
              color: Colors.black,
            ),
          ],
        ),
        body: <Widget>[
          homeView(),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.center,
            child: Text(
              'Page 2'.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.center,
            child: Text(
              'Page 3'.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.center,
            child: Text(
              'Page 4'.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ][currentPageIndex],
      ),
    );
  }
}
