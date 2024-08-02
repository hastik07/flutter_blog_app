import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                  const SizedBox(width: 33,),
                  const Text('Following'),
                  const SizedBox(width: 33,),
                  const Text('Followers'),
                  const SizedBox(width: 33,),
                  Text('Recents', style: TextStyle(color: Colors.yellow[900]),),
                  const SizedBox(width: 33,),
                  const Text('Trends'),
                ],
              ),
              const Divider(thickness: 2.0,),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey.shade400
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade400
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade400
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade400
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey.shade400
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 345,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 15,),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade700,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Image.asset('assets/images/home.png'),
                        ),
                        const SizedBox(width: 38,),
                        Image.asset('assets/images/search.png'),
                        const SizedBox(width: 38,),
                        Image.asset('assets/images/Plus.png'),
                        const SizedBox(width: 38,),
                        Image.asset('assets/images/notification.png'),
                        const SizedBox(width: 38,),
                        Image.asset('assets/images/Group.png'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}