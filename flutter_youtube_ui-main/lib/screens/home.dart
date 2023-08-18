import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/screens/menu.dart';


class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            height: height * 0.55,
            width: double.infinity,
            child: Image.asset(
              '1.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: height * 0.4,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "የቅን ልቦች ጤና ምክር",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600,),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {
                       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Menu()));
                    },
                    // style: TextButton.styleFrom(
                    //   backgroundColor: Colors.pink,
                    // ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                      child: const Center(
                        child: Text(
                          "ይጀምሩ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )),
                const Text(
                  "በኢ.ፌ.ድ.ሪ ጤና ጥበቃ ሚንስትር",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),) 
    ));
  }
}
