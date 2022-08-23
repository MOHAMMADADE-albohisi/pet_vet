import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_vet/widgets/home_dog_widget/Spaecies.dart';
import 'package:pet_vet/widgets/home_dog_widget/equipment.dart';
import 'package:pet_vet/widgets/home_dog_widget/fode.dart';
import 'package:pet_vet/widgets/memu_Widget.dart';

// ignore: camel_case_types
class home_dog_screen extends StatefulWidget {
  const home_dog_screen({Key? key}) : super(key: key);

  @override
  State<home_dog_screen> createState() => _home_dog_screenState();
}

// ignore: camel_case_types
class _home_dog_screenState extends State<home_dog_screen>
    with SingleTickerProviderStateMixin {
  late TabController _mohammad;

  bool _like = false;
  bool _likes = false;
  bool _likess = false;

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
              children:  [
                Species_dog_Widget(),
                fodes_dogs_Widget(),
                equipment_dogs_Widget(),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          height: 300,
                          margin: EdgeInsetsDirectional.only(),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          'https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg'),
                                      backgroundColor: Colors.grey,
                                    ),
                                    const SizedBox(width: 12),
                                    Column(
                                      children: [
                                        Text(
                                          'Dr: Michael Archaeal',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'May30,2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 80),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _consulta();
                                          },
                                          icon: const Icon(Icons.chat_rounded)),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          setState(() => {_like = !_like});
                                        },
                                        icon: Icon(
                                          _like
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          height: 300,
                          margin: EdgeInsetsDirectional.only(),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          'https://i0.wp.com/roohentertainment.com/wp-content/uploads/2018/06/user-avatar-1.png?ssl=1'),
                                      backgroundColor: Colors.grey,
                                    ),
                                    const SizedBox(width: 12),
                                    Column(
                                      children: [
                                        Text(
                                          'Dr: Amalle Mahmode ',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'AB26,2019',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 80),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _consulta();
                                          },
                                          icon: const Icon(Icons.chat_rounded)),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          setState(() => {_likes = !_likes});
                                        },
                                        icon: Icon(
                                          _likes
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          height: 300,
                          margin: EdgeInsetsDirectional.only(),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz6FOCo35CJu6oDizL-rBOxFRoB_txplyFcOpAlSP2-qpUJar1J9n0FfZWBvEcCZ_Yz1w&usqp=CAU'),
                                      backgroundColor: Colors.grey,
                                    ),
                                    const SizedBox(width: 12),
                                    Column(
                                      children: [
                                        Text(
                                          'Dr: Ahmade Mohammad',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'OC 20,2016',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 80),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _consulta();
                                          },
                                          icon: const Icon(Icons.chat_rounded)),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          setState(() => {_likess = !_likess});
                                        },
                                        icon: Icon(
                                          _likess
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


  void _consulta() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        context: context,
        builder: (context) {
          return BottomSheet(
              onClosing: () {},
              builder: (context) {
                return SizedBox(
                  height: 700,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg'),
                              backgroundColor: Colors.grey,
                            ),
                            const SizedBox(width: 15),
                            const SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'New user',
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your question',
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Icon(
                                Icons.photo_library,
                                color: Color(0xFFFEC260),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 20),
                              child: Text(
                                'Add Images',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () => {Navigator.pop(context)},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFEC260),
                            onPrimary: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text('Add Consultant'),
                        ),
                      ],
                    ),
                  ),
                );
              });
        });
  }


}
