import 'package:flutter/material.dart';
import 'package:mobile/components/listview_card.dart';
import 'package:mobile/components/navigation_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var img =
      'https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          // Search bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8, // Adjust the height as needed
          ),
          // Listview
          Expanded(
            child: ListView.builder(
              // 2. Add ListView.builder
              itemCount: 20, // Number of items in your list
              itemBuilder: (context, index) {
                return CustomCard(
                  title: 'Item $index',
                  subtitle: 'Description of item $index',
                  imgUrl: img,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}
