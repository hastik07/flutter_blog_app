import 'package:flutter/material.dart';
import 'package:blog_app/homepage.dart'; // Import your HomePage

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  final List<String> _items = [
    'Flutter Basics',
    'State Management',
    'Dart Programming',
    'Responsive UI',
    'Animations in Flutter',
    'Networking with HTTP',
    'Firebase Integration',
    'Flutter Widgets',
    'Custom Themes',
    'Routing in Flutter',
  ]; // Sample list of searchable items

  List<String> _filterResults() {
    if (_searchQuery.isEmpty) {
      return _items;
    } else {
      return _items
          .where((item) =>
          item.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.orangeAccent),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomePage())); // Navigate back to the previous screen
          },
        ),
        title: const Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Search bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all( // This defines the border
                    color: Colors.black, // Set the border color to black
                    width: 1.0, // Set the border width
                  ),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (query) {
                    setState(() {
                      _searchQuery = query;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by title...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              // Search results
              Expanded(
                child: ListView.builder(
                  itemCount: _filterResults().length,
                  itemBuilder: (context, index) {
                    final result = _filterResults()[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          result,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          // Handle item tap, e.g., navigate to details page
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
