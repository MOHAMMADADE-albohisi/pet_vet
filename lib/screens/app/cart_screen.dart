import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_vet/widgets/memu_Widget.dart';

// ignore: camel_case_types
class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  State<cart_screen> createState() => _cart_screenState();
}

// ignore: camel_case_types
class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade100,
        title: const Text('سلة المشتريات '),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
      drawer: const memu_Widget(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    padding:
                        const EdgeInsetsDirectional.only(start: 15, end: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black54,
                            blurRadius: 4,
                          )
                        ]),
                    child: Stack(
                      children: [
                        PositionedDirectional(
                          end: 0,
                          top: 0,
                          child: IconButton(
                            onPressed: () {
                              //
                            },
                            icon: const Icon(Icons.close),
                            color: Colors.red,
                          ),
                        ),
                        Row(
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
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cate',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    'Quantity: 1',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      height: 1.0,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'price: 90\$',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                                IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    padding:
                        const EdgeInsetsDirectional.only(start: 15, end: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.black54,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        PositionedDirectional(
                          end: 0,
                          top: 0,
                          child: IconButton(
                            onPressed: () {
                              //
                            },
                            icon: const Icon(Icons.close),
                            color: Colors.red,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'images/image_12.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Food',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    'Quantity: 1',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      height: 1.0,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'price: 50\$',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      height: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                                IconButton(
                                  onPressed: () {
                                    //
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Total: ',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      '140\$',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'quantity:',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      '2',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Delivery:',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      '25 Minute',
                      style: GoogleFonts.cairo(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orangeAccent.shade100,
                    ),
                    child: Center(
                      child: Text(
                        'أدفع الان ',
                        style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
