import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class home_cate_screen extends StatefulWidget {
  const home_cate_screen({Key? key}) : super(key: key);

  @override
  State<home_cate_screen> createState() => _home_cate_screenState();
}

// ignore: camel_case_types
class _home_cate_screenState extends State<home_cate_screen>
    with SingleTickerProviderStateMixin {
  late TabController _mohammad;

  @override
  void initState() {
    super.initState();
    _mohammad = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _mohammad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Cats',
          style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/credit_screen');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                indicator: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(5)),
                ),
                controller: _mohammad,
                labelColor: Colors.white,
                tabs: const [
                  Tab(text: 'Species'),
                  Tab(text: 'food'),
                  Tab(text: 'equipment'),
                  Tab(text: 'consultation'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _mohammad,
              children: [
                Container(
                  color: Colors.grey,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  ),
                ),
                Text('food'),
                Text('equipment'),
                Text('consultation'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
