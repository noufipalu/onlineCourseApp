import 'package:flutter/material.dart';

class DemoCategoryPage extends StatefulWidget {
  const DemoCategoryPage({super.key});

  @override
  State<DemoCategoryPage> createState() => _DemoCategoryPageState();
}

class _DemoCategoryPageState extends State<DemoCategoryPage> {
  List<String> selectedCategories = [];

  List<Category> categories = [
    Category('Category 1', Icons.restaurant),
    Category('Category 2', Icons.shopping_cart),
    Category('Category 3', Icons.local_movies),
    Category('Category 4', Icons.directions_run),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Categories'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (selectedCategories.contains(category.name)) {
                    selectedCategories.remove(category.name);
                  } else {
                    selectedCategories.add(category.name);
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedCategories.contains(category.name)
                    ? Colors.blue
                    : Colors.grey,
                maximumSize: Size.fromHeight(
                  (MediaQuery.of(context).size.height),
                ),
              ),
              child: Column(
                children: [
                  Icon(category.icon),
                  const SizedBox(width: 8.0),
                  Text(category.name),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
}
