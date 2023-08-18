import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';
class bookSection extends StatefulWidget {
  const bookSection({Key? key}) : super(key: key);
  @override
  State<bookSection> createState() => _bookSectionState();
}

class _bookSectionState extends State<bookSection> {
 /* List<dynamic> apiData = [];
  void initState() {
    super.initState();
    fetchApiData();
  }

  Future<void> fetchApiData() async {
    final response = await http.get(Uri.parse('https://api.example.com/data'));

    if (response.statusCode == 200) {
      setState(() {
        apiData = json.decode(response.body);
      });
    } else {
      // Handle API error
      print('API request failed');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('Cards from API'),
      ),
      body: ListView.builder(
  /*      itemCount: apiData.length,
        itemBuilder: (context, index) {
          final item = apiData[index];
*/
          return Container(
        height: 200.0,
        width: double.infinity,
        child:  Card(
          margin: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.network(
                    //  item['imageUrl'],
                    'https://example.com/your-image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description 1:',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        //  item['description1'],
                        'A widget’s state can be managed in several ways, but in our example the widget itself, FavoriteWidget, will manage its own state. ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        },
      ),*/
      appBar: AppBar(
        title: Text('መጳፍት ገጽ'),
      ),
      body:Container(
        height: 200.0,
        width: double.infinity,
        child: SingleChildScrollView(child: 
        Card(
          margin: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    //  item['imageUrl'],
                    'img_success.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'gut-book-1',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        //  item['description1'],
                        'This is a book on health. it helps. lore impusm',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),) 
      )
    );
  }
}

