import 'package:detoxapp/Screens/signUpIn10steps/signUpIn2StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp3StepsLeft extends StatefulWidget {
  const signUp3StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp3StepsLeft> createState() => _signUp3StepsLeftState();
}

class _signUp3StepsLeftState extends State<signUp3StepsLeft> {

  bool agree1 = false;
  bool agree2 = false;

  @override
  Widget build(BuildContext context) {

    final String secure = "assets/svgfiles/secure.svg";
    final Widget secureSvg = SvgPicture.asset(secure);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String fiveStepsLeft = "assets/svgfiles/5stepsLeft.svg";
    final Widget fiveStepsLeftSvg = SvgPicture.asset(fiveStepsLeft);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: null,
          iconSize: 50,
          icon: secureSvg,
        ),
        title: Text("İptal Politikası",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Text("Bir iptal politikası seçin",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                ),
                activeColor: const Color(0xffE50913),
                value: agree1,
                onChanged: (value) {
                  setState(() {
                    agree1 = value ?? false;
                  }
                  );
                },
              ),
              Container(
                  width: MediaQuery.of(context).size.width-70,
                  child: Text("Misafirler tam para iadesi almak için rezervasyonlarını, deneyimin başlangıç saatinden 7 gün öncesine kadar veya rezervasyon işlemi deneyimin başlangıç saatinden 48 saat öncesine kadar yapılmışsa rezervasyon sonraki 24 saat içinde iptal etmelidir.",
                  style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.w400, color: Color(0xff1A1A1A)),
                  )
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                  ),
                  activeColor: const Color(0xffE50913),
                  value: agree2,
                  onChanged: (value) {
                    setState(() {
                      agree2 = value ?? false;
                    }
                    );
                  },
                ),
                Container(
                    width: MediaQuery.of(context).size.width-70,
                    child: Text("Misafirler, deneyimin başlangıç saatinden 24 saat öncesine kadar iptal ederek tam para iadesi alabilirler.",
                      style: GoogleFonts.montserrat(fontSize: 18.sp, fontWeight: FontWeight.w400, color: Color(0xff1A1A1A)),
                    )
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 200.h,left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {
                  Navigator.pop(context);
                },
                    child: geriButtonSvg),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signUp2StepsLeft(),
                    ),
                  );
                },
                    child: ileriButtonSvg),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: fiveStepsLeftSvg,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 3 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
