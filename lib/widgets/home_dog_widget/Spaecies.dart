import 'package:flutter/material.dart';

// ignore: camel_case_types
class Species_dog_Widget extends StatelessWidget {
  const Species_dog_Widget({
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
                          'images/image_10.png',
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
                            'كلب الشيواوا الصغير جدًا لن يكون أفضل صديق للركض. عادةً ما يميل الميزان إلى 50-80 رطلاً (على الرغم من أن بعض الأصناف قد تنحرف قليلاً أو أكبر قليلاً) ، يمكن أن تكون سلالات الكلاب الكبيرة هذه رائعة للعائلات التي ترغب في ممارسة التمارين الرياضية أو حيوان أليف يسهل تدريبه. وإذا لم تحضن قط كلبًا بحجم مهر صغير ، فلن تعيش أبدًا. العديد من هذه السلالات هي كلاب عائلية محبوبة أيضًا!',
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
