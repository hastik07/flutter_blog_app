import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

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
              const SizedBox(height: 10,),
              const Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.arrow_back_outlined, size: 30,),
                ],
              ),
              const SizedBox(height: 60,),
              Image.asset('assets/images/Group 4.png'),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Title'
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Description'
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: () {
              }, child: const Text(
                  'Upload',
                style: TextStyle(fontSize: 20.0,),
              ))
            ],
          ),
        ),
      ),
    );
  }
}