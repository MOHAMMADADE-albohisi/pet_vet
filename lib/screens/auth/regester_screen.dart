import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class regester_screen extends StatefulWidget {
  const regester_screen({Key? key}) : super(key: key);

  @override
  State<regester_screen> createState() => _regester_screenState();
}

// ignore: camel_case_types
class _regester_screenState extends State<regester_screen> {
  late TextEditingController _email;
  late TextEditingController _named;
  late TextEditingController _password;
  late TapGestureRecognizer _click;
  bool _viewpassword = true;
  String? _emailerror;
  String? _passworderror;
  String? _namdeerror;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _named = TextEditingController();
    _password = TextEditingController();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _named.dispose();
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {
    Navigator.pushNamed(context, '/login_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(10.0),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            Image.asset('images/image_1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  Text(
                    'Login whit Acount',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _named,
              style: GoogleFonts.nunito(),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _namdeerror == null ? 50 : 75,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                labelText: 'Name',
                labelStyle: GoogleFonts.nunito(),
                prefixIcon: const Icon(Icons.person_outlined),
                errorText: _namdeerror,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
              ),
              minLines: null,
              maxLines: null,
              expands: true,
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _email,
              style: GoogleFonts.nunito(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _emailerror == null ? 50 : 75,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                labelText: 'Email ID',
                labelStyle: GoogleFonts.nunito(),
                prefixIcon: const Icon(Icons.email_outlined),
                errorText: _emailerror,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
              ),
              minLines: null,
              maxLines: null,
              expands: true,
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _password,
              obscureText: _viewpassword,
              style: GoogleFonts.nunito(),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() => {_viewpassword = !_viewpassword});
                  },
                  icon: Icon(
                      _viewpassword ? Icons.visibility_off : Icons.visibility),
                ),
                labelText: 'Password',
                labelStyle: GoogleFonts.nunito(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                constraints: BoxConstraints(
                  maxHeight: _passworderror == null ? 50 : 75,
                  minHeight: 50,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                errorText: _passworderror,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
              ),
              maxLines: 1,
              minLines: 1,
              expands: false,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                'Sing Withe',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Image.asset(
                        'images/image_5.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Image.asset(
                        'images/image_6.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Image.asset(
                        'images/image_7.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () => performaLogin(),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFEC260),
                    onPrimary: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(50, 55)),
                child: const Text('LOGIN'),
              ),
            ),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Do you already have an account? ',
                          style:
                              GoogleFonts.nunito(color: Colors.grey.shade700),
                          children: [
                            TextSpan(
                                text: ' Login!',
                                recognizer: _click,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decoration: TextDecoration.underline,
                                    color: const Color(0xFFFEC260)))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void performaLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_email.text.isNotEmpty &&
        _password.text.isNotEmpty &&
        _named.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Error , enter required data',
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
    return false;
  }

  void _controolervalue() {
    setState(
      () {
        _emailerror = _email.text.isEmpty ? 'Enter Email address' : null;
        _namdeerror = _named.text.isEmpty ? 'Enter Named ' : null;
        _passworderror = _password.text.isEmpty ? 'Enter password' : null;
      },
    );
  }

  void login() {
    // Navigator.popAndPushNamed(context, '/');
  }
}
