import 'package:flutter/material.dart';
import 'package:horizontal_list_view/horizontal_list_view.dart';
import 'package:mobile/components/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var mainSrc =
      'https://firebasestorage.googleapis.com/v0/b/traveldb-7a3f0.appspot.com/o/HomeScreen%2Fmain_img_1.jpg?alt=media&token=586d9165-1d94-48b4-9f81-0783cab66f93';
  var src =
      'https://images.unsplash.com/photo-1509233725247-49e657c54213?q=80&w=1949&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  var src1 =
      'https://images.unsplash.com/photo-1707906311520-846bd7f84b8e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  var src2 =
      'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  var src3 =
      'https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  Widget horizontalCard(imgSrc, data) => SizedBox(
        width: 10,
        height: 150,
        child: Column(
          children: [
            Image.network(imgSrc),
            Text(data),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Adding a single picture and title
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 450,
                child: Image.network(
                  mainSrc,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 1, // Adjust the height as needed
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Home Page",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          // Adding a horizontal scroller view
          HorizontalListView(
            crossAxisCount: 3, // Number of items displayed per row.
            crossAxisSpacing: 15.0, // Spacing between items in the same row.
            alignment: CrossAxisAlignment
                .center, // Alignment of items within the row (default is center).
            children: [
              // List of child widgets
              // Add your widgets here
              Container(
                child: horizontalCard(src1, "Title 1"),
              ),
              Container(
                child: horizontalCard(src2, "Title 2"),
              ),
              Container(
                child: horizontalCard(src3, "Title 3"),
              ),
              Container(
                child: horizontalCard(src, "Title 4"),
              ),
              Container(
                child: horizontalCard(src, "Title 5"),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}
