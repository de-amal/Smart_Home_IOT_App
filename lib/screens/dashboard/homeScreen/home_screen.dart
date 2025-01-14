import 'package:flutter/material.dart';
import '../../../widgets/search_bar.dart' as custom;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          custom.SearchBar(), // Correct usage of the widget
          Expanded(
            child: Center(
              child: Text(
                'Data will be displayed here',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
