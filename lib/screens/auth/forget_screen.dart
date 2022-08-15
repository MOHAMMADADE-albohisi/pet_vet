import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forget_screen extends StatefulWidget {
  const forget_screen({Key? key}) : super(key: key);

  @override
  State<forget_screen> createState() => _forget_screenState();
}

class _forget_screenState extends State<forget_screen> {
  late TextEditingController _email;
  String? _emailerror;
  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
  }
  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login_screen');
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Text(
                'Forget Password?',
                textAlign: TextAlign.start,
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  color: const Color(0xFF707070),
                ),
              ),
              const SizedBox(height: 17),
              Text(
                'Type your email, we will send you verivication code via email',
                style: GoogleFonts.outfit(

                  fontSize: 14,
                  color: const Color(0xFF707070),
                ),
              ),
              const SizedBox(height: 48),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                style: GoogleFonts.outfit(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor:  Colors.grey,
                  constraints: BoxConstraints(
                    minHeight: 50,
                    maxHeight: _emailerror == null ? 56 : 81,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  hintText: 'email@gmail.com',
                  hintStyle: GoogleFonts.nunito(color: const Color(0xFFFFFFFF)),
                  hintMaxLines: 1,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xFFFFFFFF),
                  ),
                  errorText: _emailerror,
                  errorStyle: GoogleFonts.outfit(),
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
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () => performaLogin(),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFEC260),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  minimumSize: const Size(
                    327,
                    56,
                  ),
                ),
                child:  Text('Submit',style: GoogleFonts.outfit(
                  fontSize: 16,
                ),),
              ),
            ],
          ),
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
    if (_email.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Enter Email Address',
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
    return false;
  }

  void _controolervalue() {
    setState(() {
      _emailerror = _email.text.isEmpty ? 'Enter Email adress' : null;

    });
  }

  void login() {
    print('test');
    // Navigator.popAndPushNamed(context, '/');
  }

}
