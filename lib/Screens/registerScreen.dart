import 'package:detoxapp/Screens/homeScreen.dart';
import 'package:detoxapp/Screens/signInScreen.dart';
import 'package:detoxapp/Screens/signUpIn10steps/signUp10StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  bool agree = false;

  void agreementCheck() { // check for terms agreement to get available sign in button
     agree = true;
  }

  @override
  Widget build(BuildContext context) {

    final String logo = 'assets/svgfiles/logo.svg';
    final String slogan = 'assets/svgfiles/slogan.svg';
    final String newAccount = 'assets/svgfiles/newAccountButton.svg';
    final String signIn = 'assets/svgfiles/signInButton.svg';
    final Widget signInSvg = SvgPicture.asset(signIn);
    final Widget logoSvg = SvgPicture.asset(logo);
    final Widget sloganSvg = SvgPicture.asset(slogan);
    final Widget newAccountSvg = SvgPicture.asset(newAccount);

    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
        appBar: AppBar(
          backgroundColor: Color(0xffF7F7F7),
          elevation: 0,
          actions: [
            TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homeScreen(),
                ),
              );
            },
                child: Text("Atla",
                  style: GoogleFonts.poppins(color: Color(0xff757575), decoration: TextDecoration.underline),
                ),
            ),
          ],
        ),
      body: Center(
        child:ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100.h, bottom: 20.h),
            child: logoSvg,),
          Container(child: sloganSvg,),
          Container(
            padding: EdgeInsets.only(top:20.h),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signUp10StepsLeft(),
                  ),
                );
              },
              child: newAccountSvg
            ),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signInScreen(),
                    ),
                  );
                },
                child: signInSvg
            ),
          ),
            Padding(
            padding: EdgeInsets.only(top: 40.h,left: 20.w),
            child: Row(
            children: <Widget>[
              Checkbox(
                activeColor: const Color(0xffE50913),
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  }
                  );
                },
              ),

              Container(
                width: MediaQuery.of(context).size.width-70,
                child:RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(),
                  children: const <TextSpan>[
                    TextSpan(text: "‘Üye Ol’ butonuna tıklayarak ", style: TextStyle(color: Color(0xff757575), fontSize: 14)),
                    TextSpan(text: "Kullanıcı Sözleşmesini ", style: TextStyle(color: Color(0xff1A1A1A), fontSize: 14, decoration: TextDecoration.underline)),
                    TextSpan(text: "kabul etmiş olacaksınız.", style: TextStyle(color: Color(0xff757575), fontSize: 14)),
                  ],
                ),
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
}
