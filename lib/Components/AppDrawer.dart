// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 16, 20),
              ),
              child: Text(
                'WTAPS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add navigation logic here
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add navigation logic here
              },
            ),
            // Add more list tiles for additional menu items
          ],
        ),
      );
    
  }
}
