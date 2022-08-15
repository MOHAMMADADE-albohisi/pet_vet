import 'package:flutter/material.dart';
import 'package:pet_vet/widgets/home_cats_widget/equipment.dart';
import 'package:pet_vet/widgets/home_cats_widget/fode.dart';
import 'package:pet_vet/widgets/home_cats_widget/Spaecies.dart';
import 'package:pet_vet/widgets/memu_Widget.dart';

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
        backgroundColor: Colors.orangeAccent.shade100,
        title: Text('BET & VET'),
        centerTitle: true,
      ),
      drawer: const memu_Widget(),
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
                  borderRadius: BorderRadius.all(Radius.circular(5)),
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
              children: const [
                Species_cats_Widget(),
                fodes_cates_Widget(),
                equipment_cats_Widget(),
                Text('consultation'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
