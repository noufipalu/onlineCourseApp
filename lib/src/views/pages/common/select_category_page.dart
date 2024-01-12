import 'package:flutter/material.dart';

class SelectCategoryPage extends StatefulWidget {
  const SelectCategoryPage({
    super.key,
  });

  @override
  State<SelectCategoryPage> createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  final List<String> _interests = [
    'Design',
    'Marketing',
    'Science',
    'Hacking',
    'Business',
    'Photography',
    'Interior',
    'Magician',
    'Finish Development',
    'Video Editor',
    'Engienering',
    'Content'
  ];

  final List<String> _selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Choose your interest for better search',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  selectableCard('Design', 'assets/icons/design.png'),
                  selectableCard('Marketing', 'assets/icons/design.png'),
                  selectableCard('Science', 'assets/icons/design.png'),
                  selectableCard('Hacking', 'assets/icons/design.png'),
                  selectableCard('Business', 'assets/icons/design.png'),
                  selectableCard('Photography', 'assets/icons/design.png'),
                  selectableCard('Interior', 'assets/icons/design.png'),
                  selectableCard('Magician', 'assets/icons/design.png'),
                  selectableCard('Finish', 'assets/icons/design.png'),
                  selectableCard('Development', 'assets/icons/design.png'),
                  selectableCard('Video Editor', 'assets/icons/design.png'),
                  selectableCard('Engienering', 'assets/icons/design.png'),
                  selectableCard('Content', 'assets/icons/design.png'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Your function here
                },
                child: Text('Select'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectableCard(String title, String imagePath) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(imagePath, width: 60, height: 60),
          SizedBox(width: 10),
          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
