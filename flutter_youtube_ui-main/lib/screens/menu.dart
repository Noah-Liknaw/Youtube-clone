import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/screens/nav_screen.dart';
import 'package:http/http.dart' as http;

class Menu extends StatefulWidget {
  const Menu();

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool darkMode = false;
  List<dynamic> data = [];

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
    return Container(
      width: width * 0.65,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          img,
          TextButton(
            onPressed: () {
              selectedOrgan = name;
              filtered = [];
                        for(int i=0;i<videos.length;i++){
                          if(videos[i].catagory == selectedOrgan){
                            filtered.add(videos[i]);
                          }
                        }    
                        count =filtered.length; 
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
  Future<List<dynamic>> fetchData() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/getAllVideos/'));
      print("hey");

  if (response.statusCode == 200) {
    // Parse the response JSON
    final data = json.decode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}
}
