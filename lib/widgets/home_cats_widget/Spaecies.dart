import 'package:flutter/material.dart';

// ignore: camel_case_types
class Species_cats_Widget extends StatelessWidget {
  const Species_cats_Widget({
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
                            'images/image_9.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('82 \$'),
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
                              'القط الشيرازي أو القط الفارسي طويل الشعر أو القط الإيراني طويل الشعر ويعرف أيضا بـ، هي سلالة قطط ذات فرو طويل أصيلة المملكة المتحدة. ينتمي القط إلى عائلة السنوريات. وتتميز هذه السلالة بألوانها المتعددة. القط ذو حجم متوسط إلى كبير وهيئة مدورة ووجه ذو خطم قصير جدا.',
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
                            'images/image_16.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('90 \$'),
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
                              'القط السيامي ‏ أصلها آسيوي أهداها ملك سيام إلى السيد أوين جولد القنصل الإنجليزي عام 1880 وظهرت بصورة رسمية في قصر كريستال في لندن ولقيت نجاحًا عظيمًا ثم وصلت لأمريكا 1890 ولم تكن بهذا الشكل الحالي بل كانت مكتنزة ورأسها مستدير قليلا ثم تدخل متخصصى تربيته لإعطائه مناعة أكثر بالتزاوج فنتج عنه هذا النوع السيامي الحالي ...',
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
                            'images/image_17.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: const [
                            Text('السعر الخاص  '),
                            SizedBox(height: 5),
                            Text('70 \$'),
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
                              'القط الشيرازي أو القط الفارسي طويل الشعر أو القط الإيراني طويل الشعر ويعرف أيضا بـ، هي سلالة قطط ذات فرو طويل أصيلة المملكة المتحدة. ينتمي القط إلى عائلة السنوريات. وتتميز هذه السلالة بألوانها المتعددة. القط ذو حجم متوسط إلى كبير وهيئة مدورة ووجه ذو خطم قصير جدا.',
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
