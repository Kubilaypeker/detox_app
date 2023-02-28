import 'package:detoxapp/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUpLastStep extends StatefulWidget {
  const signUpLastStep({Key? key}) : super(key: key);

  @override
  State<signUpLastStep> createState() => _signUpLastStepState();
}

class _signUpLastStepState extends State<signUpLastStep> {

  bool agree1 = false;

  @override
  Widget build(BuildContext context) {

    final String secured = "assets/svgfiles/secured.svg";
    final Widget securedSvg = SvgPicture.asset(secured);

    final String yasal = "assets/svgfiles/yasalsözlesme.svg";
    final Widget yasalSvg = SvgPicture.asset(yasal);

    final String upload = "assets/svgfiles/uploadProfilePhoto.svg";
    final Widget uploadSvg = SvgPicture.asset(upload);

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
          icon: securedSvg,
        ),
        title: Text("Kontrol Edin ve gönderin",
          style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text("Deneyiminize özgü ayrıntılar nedeniyle ek lisanslara, ruhsatlara veya izinlere sahip olmanız gerekebilir.",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          IconButton(onPressed: () {},
              icon: yasalSvg),
          Container(
            child: Row(
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
                    child: Text("Bu onay kutusunu işaretleyerek, yukarıda belirtildiği şekilde yürürlükte bulunan gerekliliklerin her birini okuduğumu, anladığımı ve bunlara uyduğuma dair kanıt istenilebileceğini anladığımı beyan ederim.",
                      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff1A1A1A)),
                    )
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 250.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => homeScreen(),
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
            child: Text("Son adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
