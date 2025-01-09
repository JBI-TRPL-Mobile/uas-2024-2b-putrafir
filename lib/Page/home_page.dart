import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            Text(
              'Welcome William',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 150.0,
              width: double.infinity,
              color: Colors.grey[300],
              child: Center(
                child: Icon(
                  Icons.image,
                  size: 100.0,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Keep Moving Up',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                _categoryChip('Development'),
                _categoryChip('IT & Software'),
                _categoryChip('UI/UX Design'),
                _categoryChip('Business'),
                _categoryChip('Finance & Business'),
                _categoryChip('Personal'),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Top Courses',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _coursePlaceholder(),
                _coursePlaceholder(),
                _coursePlaceholder(),
                _coursePlaceholder(),
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _categoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _coursePlaceholder() {
    return Container(
      height: 100.0,
      width: 70.0,
      color: Colors.grey[300],
      child: Icon(
        Icons.image,
        size: 50.0,
        color: Colors.grey[700],
      ),
    );
  }
}
