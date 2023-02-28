import 'package:detoxapp/Screens/forgotPassword.dart';
import 'package:detoxapp/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({Key? key}) : super(key: key);

  @override
  State<signInScreen> createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {

  final TextEditingController countryCode = TextEditingController(text: "+90"); // +90 is for Turkey as a default
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    final String phoneNumber = 'assets/svgfiles/phoneNumber.svg';
    final Widget phoneNumberSvg = SvgPicture.asset(phoneNumber);

    final String passwordFrame = 'assets/svgfiles/passwordFrame.svg';
    final Widget passwordFrameSvg = SvgPicture.asset(passwordFrame);

    final String passwordIcon = 'assets/svgfiles/passwordIcon.svg';
    final Widget passwordIconSvg = SvgPicture.asset(passwordIcon);

    final String signIn = 'assets/svgfiles/signInButton.svg';
    final Widget signInSvg = SvgPicture.asset(signIn);

    final String signInWithGoogle = 'assets/svgfiles/signInWithGoogle.svg';
    final Widget signInWithGoogleSvg = SvgPicture.asset(signInWithGoogle);

    final String signInWithFacebook = 'assets/svgfiles/signInWithFacebook.svg';
    final Widget signInWithFacebookSvg = SvgPicture.asset(signInWithFacebook);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
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
          Padding(padding: EdgeInsets.only(top: 20.h, left: 15.w),
          child: Text("Giriş Yap", style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xff1A1A1A)),),
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: phoneNumberSvg,
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
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: passwordFrameSvg,

              ),
              Container(
                width: MediaQuery.of(context).size.width-20,
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Container(
                    width: MediaQuery.of(context).size.width-100,
                      child:TextFormField(
                        obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                    controller: password,
                  ),),
                    Container(
                      child: passwordIconSvg,
                    )
                  ]
                  )
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15.w),
            alignment: Alignment.centerLeft,
            child:TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => forgotPasswordScreen(),
                ),
              );
            },
              child: Text("Şifremi Unuttum",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xff757575), decoration: TextDecoration.underline),
              )
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.h),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeScreen(),
                    ),
                  );
                },
                child: signInSvg
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.h),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeScreen(),
                    ),
                  );
                },
                child: signInWithGoogleSvg
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeScreen(),
                    ),
                  );
                },
                child: signInWithFacebookSvg
            ),
          ),
        ],
      ),
    );
  }
}
