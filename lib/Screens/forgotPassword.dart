import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotPasswordScreen extends StatefulWidget {
  const forgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<forgotPasswordScreen> createState() => _forgotPasswordScreenState();
}

class _forgotPasswordScreenState extends State<forgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    final String emailFrame = 'assets/svgfiles/EmailFrame.svg';
    final Widget emailFrameSvg = SvgPicture.asset(emailFrame);

    final String passwordButton = 'assets/svgfiles/passwordButton.svg';
    final Widget passwordButtonSvg = SvgPicture.asset(passwordButton);

    final TextEditingController email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 7,
            icon: backButtonSvg
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40.h, left: 20.w),
            child: Text("Şifremi Yenile",
            style: GoogleFonts.montserrat(fontSize: 24.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: emailFrameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 40.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: email,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
            child: TextButton(
                onPressed: () {},
                child: passwordButtonSvg,
            ),
          ),
        ],
      ),
    );
  }
}
