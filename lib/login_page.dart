import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              const Text(
                'Welcome to the app',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
          
              const SizedBox(height: 10,),
              const Text(
                'We\'re excited to help you book and manage your service appointments with ease.',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25,),
          
              SmoothPageIndicator(
                controller: PageController(initialPage: 0),
                count: 4,
                effect: WormEffect(
                  dotHeight: 6,
                  dotWidth: 6,
                  activeDotColor: Color(0xFF0D47A1),
                  dotColor: Colors.grey,
                ),
              ),
          
              SizedBox(height: 50,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: () {
                      print('Logged in Successfully');
                    },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text('Create an account',
                style: TextStyle(color: Colors.blue[900], fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}