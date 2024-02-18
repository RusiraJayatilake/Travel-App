import 'package:flutter/material.dart';
import 'package:mobile/components/listview_card.dart';

/* Things to Fix
  * The Search UI is not showing,
  when the list view is given.
  * The ListView is not properly setup.
*/

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
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
                height: 10, // Adjust the height as needed
              ),
              // Listview
              ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const ListViewCard();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
