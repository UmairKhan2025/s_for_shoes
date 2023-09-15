// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:s_for_shoes/pages/homePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "assets/nike.png",
                  width: 350,
                ),
              ),
              const SizedBox(height: 48),

              //title

              const Text(
                'Just Do it',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  
                ),
              ),

              const SizedBox(height: 48),

              const Text(
                'Brand new Sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 40,
              ),
              // start Now button
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),
                ),),
                child: Container(
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 23, 22, 22),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:16 ),
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
