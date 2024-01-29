// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_bag)),
            IconButton(
                onPressed: null, icon: Icon(Icons.hourglass_bottom_outlined)),
          ],
          leading: Container(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/imagess.png',
              width: 30,
              height: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              Text(
                'Store. The best way to buy the products you love.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/storeperson.png'),
                    ),
                    Column(
                      children: [
                        Text(
                          '  Need Shopping help?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Ask a specialist',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/storeperson.png'),
                    ),
                    Column(
                      children: [
                        Text(
                          '  Visit an Apple Store',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Find one near you',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, 
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.all(16.0),
                      width: 200,
                      height: 100, 
                      color: Colors.black, // Add styling as needed
                      child: Center(
                        child: Text('Item $index',
                            style: TextStyle(color: Colors.white)),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,),
                SizedBox(height: 200,)

            ],
          ),
        ),
      ),
    );
  }
}
