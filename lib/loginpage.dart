import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Blog nest logo.png', width: 130,),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.white,
                    filled: true,
                    errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    hintText: 'Password',
                    errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    fillColor: Colors.white,
                    filled: true
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?', style: TextStyle(color: Colors.grey.shade600),),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 25,),
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[300],
                      )
                  ),
                  const Text('Or continue with'),
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[300],
                      )
                  ),
                  const SizedBox(width: 25,)
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Google.png', height: 60,),
                  Image.asset('assets/images/Apple.png', height: 50,),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not Registered?'),
                  SizedBox(width: 4,),
                  Text('Register here', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}