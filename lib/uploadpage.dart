import 'dart:io';
import 'dart:developer' as devtools show log;
import 'package:blog_app/homepage.dart';
import 'package:blog_app/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _image;
  final picker = ImagePicker();

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
      imageQuality: 80,
    );
    setState(() {
      if(pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        devtools.log('No Image Picked');
      }
    });
  }
  int myIndex = 1;
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
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 10),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  }, child: const Icon(Icons.arrow_back_outlined, size: 30,)),
                ],
              ),
              const SizedBox(height: 60,),
              InkWell(
                onTap: () {
                  getImageFromGallery();
                },
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: _image != null ? Image.file(_image!.absolute, fit: BoxFit.cover,)
                  : const Center(
                    child: Icon(
                        Icons.add_photo_alternate_outlined,
                      size: 30,
                    ),
                  ),
                ),
              ),
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
              InkWell(
                onTap: () {
                  getImageFromGallery();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Text(
                    'Upload',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

