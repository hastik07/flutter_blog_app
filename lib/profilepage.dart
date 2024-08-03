import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(fontWeight: FontWeight.w700),),
        backgroundColor: Colors.yellow.shade800,
      ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.arrow_back_outlined, size: 30,)
              ],
            ),
            const SizedBox(height: 30,),
            Container(
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
                        child: Text('Hastik',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      SizedBox(width: 15,),
                      Text('Post', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(width: 55,),
                      Text('Followers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Text('Following', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
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
                  }, child: const Text('Edit', style: TextStyle(fontSize: 18),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}