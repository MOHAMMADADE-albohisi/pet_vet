// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class deleteitem_screen extends StatefulWidget {
  const deleteitem_screen({Key? key}) : super(key: key);

  @override
  State<deleteitem_screen> createState() => _deleteitem_screenState();
}

class _deleteitem_screenState extends State<deleteitem_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade100,
        title: const Text('Delete Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: EdgeInsetsDirectional.only(bottom: index == 5 ? 0 : 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.black38,
                        blurRadius: 4,
                      )
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'images/image_9.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: const [
                          Text('السعر الخاص  '),
                          SizedBox(height: 5),
                          Text('50 \$'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          const Text('Delete the Item'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
