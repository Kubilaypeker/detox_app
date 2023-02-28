import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class validationScreen extends StatefulWidget {
  const validationScreen({Key? key}) : super(key: key);

  @override
  State<validationScreen> createState() => _validationScreenState();
}

ColorBuilder _solidColor =
PinListenColorBuilder(Colors.grey, Colors.grey[400]!);
bool _solidEnable = false;

class _validationScreenState extends State<validationScreen> {
  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            iconSize: 7,
            icon: backButtonSvg
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30.h, left: 20.h),
          child: Text("Onay Kodu",
          style: GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
          ),
          ),
          Container(
            height: 110.h,
              padding: EdgeInsets.only(left: 40.w, top: 40.h, right: 40.w),
              child: PinInputTextField(pinLength: 4, decoration: BoxLooseDecoration(
                radius: const Radius.circular(16),
        strokeColorBuilder: PinListenColorBuilder(Colors.black, Colors.black),
        bgColorBuilder: _solidEnable ? _solidColor : null,
          )
          )
    ),
          Container(
            padding: EdgeInsets.only(left: 12.w, top: 124.h, right: 12.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: TextButton(onPressed: ()  {},
              child: Text("Devam Et", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffE50913)),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
