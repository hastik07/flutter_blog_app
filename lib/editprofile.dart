import 'package:blog_app/profilepage.dart';
import 'package:blog_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Uint8List? _image;
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                    }, child: const Icon(Icons.arrow_back_outlined)),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      _image != null ?
                          CircleAvatar(
                            radius: 64,
                            backgroundImage: MemoryImage(_image!),
                          )
                      :
                      const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: selectImage,
                          icon: Icon(Icons.add_a_photo)),
                          bottom: -10,
                          left: 80,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name'
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Last Name'
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username'
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 40,),
              //Upload button
            ],
          ),
        ),
      ),
    );
  }
}