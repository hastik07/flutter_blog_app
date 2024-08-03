import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Row(
                  children: [
                    Image.asset('assets/images/icon.png', width: 50, height: 50,),
                    const SizedBox(width: 100,),
                    Image.asset('assets/images/Blog nest logo.png', width: 100, height: 100,),
                    const SizedBox(width: 75,),
                    Image.asset('assets/images/Profile Picture.png')
                  ],
                ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 40,),
                  Text('Recents', style: TextStyle(color: Colors.yellow[900], fontWeight: FontWeight.bold),),
                  const SizedBox(width: 70,),
                  const Text('Following', style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(width: 85,),
                  const Text('Followers',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const Divider(thickness: 2.0,),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 380,
                child: Image.asset('assets/images/Blog 1.png', fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}