// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/AppDrawer.dart';
import 'package:flutter_application_1/Components/BottomBar.dart';
import 'package:flutter_application_1/Components/CategoriesList.dart';
import 'package:flutter_application_1/Components/SearchBar.dart';
import 'package:flutter_application_1/HomeScreen/dress.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              )
            ],
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'WTAPS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Listener(
          onPointerDown: (_) {
            // Unfocus text field when tapping outside
            FocusScope.of(context).unfocus();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Deals So Good They Won\'t Last!🔥',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RoundSearchBar(
                  icon: Icons.search,
                  hintText: "Search",
                  onChanged: (value) {
                    // Handle onChanged event
                  },
                ),
              ),
              // Container for Flash Sale
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.0),
                    ClipPath(
                      // clipper: UpwardCurveClipper(),
                      child: Container(
                        height: 260, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: Colors.black, // Example background color
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: Alignment(5, 10),
                                  child: Text(
                                    'Flash Sales',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0), // Add left padding here
                                  child: Row(
                                    children: [
                                      CircleIndicator(
                                        color:
                                            Color.fromARGB(255, 249, 247, 247),
                                        text: '10',
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        ':',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 5),
                                      CircleIndicator(
                                        color:
                                            Color.fromARGB(255, 250, 247, 247),
                                        text: '5',
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        ':',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                          width:
                                              5), // Add spacing between circles
                                      CircleIndicator(
                                        color:
                                            Color.fromARGB(255, 249, 246, 246),
                                        text: '50',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ), // Circles for hours, minutes, and seconds
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.network(
                                      'https://logan.nnnow.com/content/dam/nnnow-project/15-feb-2024/hp/aw23/16FEB24-HP-AWOFFER-ARROW.jpg', // Replace with your image URL
                                      width: 150,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(136, 23, 22, 22),
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Adjust the radius as needed
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Offer Name 1',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Price: \$X.XX | Rating: 4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Image.network(
                                      'https://logan.nnnow.com/content/dam/nnnow-project/15-feb-2024/hp/aw23/16FEB24-HP-AWOFFER-ARROW.jpg', // Replace with your image URL
                                      width: 150,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Adjust the radius as needed
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Offer Name 2',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Price: \$X.XX | Rating: 4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: SizedBox(
                  height: 80,
                  child: CategoriesList(),
                ),
              ),
              Container(
                height: 200, // Adjust the height as needed
                child: Dress(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingBottomTabNavigator(),
    );
  }
}

class CircleIndicator extends StatelessWidget {
  final Color color;
  final String text;

  const CircleIndicator({
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25, // Adjust the width of the circle
      height: 25, // Adjust the height of the circle
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 12, 12, 12),
            fontSize: 12, // Adjust the font size of the text
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
