import 'package:flutter/material.dart';
import '../../../widgets/search_bar.dart' as custom;

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> devices = [
    'Device 1',
    'Device 2',
    'Device 3',
    'Device 4',
    'Device 5',
    'Device 6',
  ]; // Sample data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          custom.SearchBar(),// Spacer
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Adjust to 3 for three columns
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  child: Center(
                    child: Text(
                      devices[index],
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
