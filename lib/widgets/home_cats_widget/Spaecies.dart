import 'package:flutter/material.dart';

// ignore: camel_case_types
class Species_cats_Widget extends StatelessWidget {
  const Species_cats_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 300,
            margin: EdgeInsetsDirectional.only(bottom: index == 5 ? 0 : 15),
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
                            'القط الشيرازي أو القط الفارسي طويل الشعر أو القط الإيراني طويل الشعر ويعرف أيضا بـ، هي سلالة قطط ذات فرو طويل أصيلة المملكة المتحدة. ينتمي القط إلى عائلة السنوريات. وتتميز هذه السلالة بألوانها المتعددة. القط ذو حجم متوسط إلى كبير وهيئة مدورة ووجه ذو خطم قصير جدا.',
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
