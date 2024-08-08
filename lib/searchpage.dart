import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GNav(
        tabBackgroundColor: Colors.grey.shade400,
        padding: const EdgeInsets.all(16),
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.search),
          GButton(icon: Icons.add_circle),
          GButton(icon: Icons.notifications),
          GButton(icon: Icons.person),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 350,
                    height: 49,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.arrow_back_rounded),
                        SizedBox(width: 15,),
                        Text('Search by title...', style: TextStyle(fontFamily: 'Poppins'),)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Blog', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, height: 10)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}