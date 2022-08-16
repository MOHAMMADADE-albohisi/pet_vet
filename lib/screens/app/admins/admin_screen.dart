// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_vet/widgets/memu_Widget.dart';

class admin_screen extends StatefulWidget {
  const admin_screen({Key? key}) : super(key: key);

  @override
  State<admin_screen> createState() => _admin_screenState();
}

class _admin_screenState extends State<admin_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade100,
        title: Text(
          'Pet & Vet Admin',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      drawer: const memu_Widget(),
      body: ListView(
        children: [
          Image.asset('images/image_1.png'),
          const SizedBox(height: 20),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add_screen');
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 35),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Add item',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/deleteitem_screen');
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 35),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Delete Item',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
