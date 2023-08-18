import 'package:flutter/material.dart';
class contactUS extends StatefulWidget {
  const contactUS({Key? key}) : super(key: key);
  @override
  State<contactUS> createState() => _contactUSState();
}

class _contactUSState extends State<contactUS> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ያግኙን ገጽ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 16.0),
              Text(
                'ለማንኛውም ጥያቄ ወይም እርዳታ እኛን ለማግኘት ነፃነት ይሰማዎ። በስልክ፣ በኢሜል ወይም በአካል አድራሻችን እንገኛለን። ቡድናችን እርስዎን ለመርዳት ደስተኛ ይሆናል!',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'ስልክ: +1 123-456-7890',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'ኢሜይል: contact@example.com',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  'አድራሻ: 123 Main St, City, Country',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'በማህበራዊ ሚዲያ ላይ ይከተሉን',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      // Handle Facebook button press
                    },
                    iconSize: 48.0,
                  ),
                  SizedBox(width: 32.0),
                  IconButton(
                    icon: Image.asset('instagram-icon.png'), // Use the custom Instagram icon image
                    onPressed: () {
                      // Handle Instagram button press
                    },
                    iconSize: 48.0,
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

