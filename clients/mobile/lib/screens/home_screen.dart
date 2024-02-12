import 'package:flutter/material.dart';
import 'package:horizontal_list_view/horizontal_list_view.dart';
// import 'package:mobile/components/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var src =
      'https://images.unsplash.com/photo-1509233725247-49e657c54213?q=80&w=1949&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  Widget HorizontalCard() => SizedBox(
        width: 250,
        height: 150,
        child: Image.network(src),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Adding a single picture and title
          Container(
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  src,
                  width: double.infinity,
                  height: 470,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Title for the main image',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Adding a horizontal scroller view
          HorizontalListView(
            crossAxisCount: 3, // Number of items displayed per row.
            crossAxisSpacing: 8.0, // Spacing between items in the same row.
            alignment: CrossAxisAlignment
                .center, // Alignment of items within the row (default is center).
            children: [
              // List of child widgets
              // Add your widgets here
              Container(
                child: HorizontalCard(),
              ),
              Container(
                child: HorizontalCard(),
              ),
              Container(
                child: HorizontalCard(),
              ),
              Container(
                child: HorizontalCard(),
              ),
              Container(
                child: HorizontalCard(),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: const AppNavigationBar(),
    );
  }
}
