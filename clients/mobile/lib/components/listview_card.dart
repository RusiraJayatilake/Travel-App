import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgUrl;

  CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      // color: Colors.blueAccent,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                imgUrl,
                width: 100, // Constrain the width of the image
                height: 100, // Constrain the height of the image
                fit: BoxFit.cover, // Adjust the image's aspect ratio
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black, // Set the text color
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.black, // Set the text color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
