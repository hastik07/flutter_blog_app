import 'package:blog_app/homepage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int myIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              }, child: const Icon(Icons.home)),
              label: 'Home',
              backgroundColor: Colors.orange
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadPage()));
              }, child: const Icon(Icons.add_circle_outlined)),
              label: 'Upload',
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
              }, child: const Icon(Icons.search)),
              label: 'Search',
              backgroundColor: Colors.purpleAccent
          ),
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