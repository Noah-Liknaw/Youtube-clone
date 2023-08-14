import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/screens/nav_screen.dart';

class Menu extends StatefulWidget {
  const Menu();

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool darkMode = false;

  void chageMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: darkMode ? Colors.black : Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  SizedBox(
                    height: height * 0.35,
                    width: double.infinity,
                    child: Image.asset(
                      "2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 15,
                    width: 50,
                    child: TextButton(
                      onPressed: () => chageMode(),
                      child: Image.asset(
                        "3.png",
                      ),
                    ),
                  ),
                ]),
                itemCard(
                    width, Image.asset("kidney.png"), "ኩላሊት"),
                itemCard(width, Image.asset("lung.png"), "የሳንባ"),
                itemCard(
                    width, Image.asset("gut.png"), "የጨጓራ ህመም"),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )),
    );
  }

  Widget itemCard(double width, Image img, String name) {
    if (name == "ኩላሊት") {
      selectedOrgan = "kidney";
    } else if (name == "የሳንባ") {
      selectedOrgan = "lung";
    } else if (name == "የጨጓራ ህመም") {
      selectedOrgan = "gut";
    }
    return Container(
      width: width * 0.65,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          img,
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  NavScreen()));
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24 * width),
                gradient: const LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff00c1ff), Color(0xff005671)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
