import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double _rating = 0.0;
  bool _isSubmitEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                  _isSubmitEnabled = true; // Enable submit button
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isSubmitEnabled
                  ? () {
                      // Handle submit action
                      print('Product rated: $_rating');
                    }
                  : null,
              child: const Text('Submit Rating'),
            ),
          ],
        ),
      ),
    );
  }
}
