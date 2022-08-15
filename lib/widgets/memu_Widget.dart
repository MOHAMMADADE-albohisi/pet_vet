// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class memu_Widget extends StatefulWidget {
  const memu_Widget({Key? key}) : super(key: key);

  @override
  State<memu_Widget> createState() => _memu_WidgetState();
}

class _memu_WidgetState extends State<memu_Widget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSVNDTCFdYkZVDp49l0Sux5b0qaQboq6swiLhZI04&s',
              ),
            ),
            accountName: Text('Mohammad Abolish'),
            accountEmail: Text('mohammadalbohisi@gmail.com'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Future.delayed(const Duration(milliseconds: 250), () {
                Navigator.pushNamed(context, '/welcom_screen');
              });
            },
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Future.delayed(const Duration(milliseconds: 250), () {
                Navigator.pushNamed(context, '/welcom_screen');
              });
            },
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('shopping '),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Future.delayed(const Duration(milliseconds: 250), () {
                Navigator.pushNamed(context, '/welcom_screen');
              });
            },
            leading: const Icon(Icons.language),
            title: const Text('language'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          ListTile(
            onTap: () {
              _confirmeLogoute();
            },
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }

  void _confirmeLogoute() async {
    bool? test = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Conform Logout',
            style: GoogleFonts.cairo(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          content: Text(
            'Are you suer?',
            style: GoogleFonts.cairo(
              fontSize: 13,
              color: Colors.black45,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'Conform',
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text(
                'Cancel',
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        );
      },
    );
    if (test ?? false) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/login_screen');
    }
  }
}
