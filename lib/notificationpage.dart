import 'package:blog_app/homepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  }, child: const Icon(Icons.arrow_back_outlined)),
                  const SizedBox(width: 20,),
                  const Text('Notifications', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20),),
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