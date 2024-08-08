import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
              const SizedBox(height: 12,),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  const Icon(Icons.arrow_back_outlined),
                  const SizedBox(width: 20,),
                  const Text('Notifications', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20),),
                  const SizedBox(width: 130,),
                  Image.asset('assets/images/Profile Picture.png'),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(thickness: 1.5,),
              const SizedBox(height: 20,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 326,
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Notification', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),)
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