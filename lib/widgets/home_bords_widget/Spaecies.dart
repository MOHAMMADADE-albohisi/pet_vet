import 'package:flutter/material.dart';

// ignore: camel_case_types
class Species_birds_Widget extends StatelessWidget {
  const Species_birds_Widget({
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
                            'images/image_11.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('50 \$'),
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
                              'الكناري: (بالإنجليزية: Canary)، ينتمي إلى المملكة الحيوانية ويعود أصل طيور الكناري إلى جزر الكناري والأزور وماديرا، ويُطلق عليه عدد من الأسماء مثل؛ كناري الجزيرة، أو الكناري البري، أو الكناري الأطلسي',
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
                            'images/image_30.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('100 \$'),
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
                              'الكروان الكروان هي واحدة من أجمل طيور الزينة ، و منشأها الأصلي في أستراليا ، و. ويصل إلى 27 سم بعض تقريباً من الكروان ، ويصل إلى مجموعة من الكروان.',
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
