import 'package:flutter/material.dart';

// ignore: camel_case_types
class equipment_birds_Widget extends StatelessWidget {
  const equipment_birds_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.black38,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/image_34.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('34 \$'),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text('أضف الى السلة'),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: const [

                            Text(
                              'قفص لطيور بحجم صغير يتسع لاثنين على الاقل  من الطيور يحتوي على علبتين لطعام وانبوب للمياه متعدد الاستخدام',
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.black38,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/image_35.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('140 \$'),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text('أضف الى السلة'),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: const [
                            Text(
                              'قفص طيور بحجم كبير لعدد كبير من الطيور مثل الطاووس يحتوي على علبتين لطعام وانبوب للمياه متعدد الاستخدام',

                            ),

                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.black38,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'images/image_36.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('53 \$'),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text('أضف الى السلة'),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: const [
                            Text(
                              'تصنف الطيور من الكائنات الحية الفقارية ذوات الدم الحار، وهي من الكائنات الحية الجميلة في شكلها، والتي تضفي للطبيعة جمالاً مميزاً، فالبعض منها لها أشكال جميلة تصدر ألحان جميلة عند تغريده',
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),




        ],
      ),
    );
  }
}
