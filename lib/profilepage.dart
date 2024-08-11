import 'package:blog_app/editprofile.dart';
import 'package:blog_app/homepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:blog_app/uploadpage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700),),
        backgroundColor: Colors.yellow.shade800,
      ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Center(
              child: Container(
                width: 329,
                height: 234,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10,),
                        Image.asset('assets/images/Profile Picture.png', width: 50, height: 70,),
                        const SizedBox(width: 20,),
                        const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text('Hastik',style: TextStyle(fontFamily: 'Poppins', fontSize: 25, fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      children: [
                        SizedBox(width: 15,),
                        Text('Post', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(width: 50,),
                        Text('Followers', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(width: 30,),
                        Text('Following', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(width: 30,),
                        Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(width: 100,),
                        Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        SizedBox(width: 120,),
                        Text('1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile()));
                    }, child: const Text('Edit', style: TextStyle(fontFamily: 'Poppins', fontSize: 18),))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}