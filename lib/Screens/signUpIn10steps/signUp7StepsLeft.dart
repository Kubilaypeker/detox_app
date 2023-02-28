import 'package:detoxapp/Screens/signUpIn10steps/signUp6StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp7StepsLeft extends StatefulWidget {
  const signUp7StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp7StepsLeft> createState() => _signUp7StepsLeftState();
}

class _signUp7StepsLeftState extends State<signUp7StepsLeft> {
  @override
  Widget build(BuildContext context) {

    final String genel = "assets/svgfiles/genelBakış.svg";
    final Widget genelSvg = SvgPicture.asset(genel);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String sevenStepsLeft = "assets/svgfiles/7stepsLeft.svg";
    final Widget sevenStepsLeftSvg = SvgPicture.asset(sevenStepsLeft);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          iconSize: 7,
          icon: genelSvg,
        ),
        title: Text("Genel Bakış",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("Deneyiminizi Açıklayın",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("- Deneyiminizi en iyi anlatan başlığı yazın.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Container(
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              alignment:  Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [ BoxShadow(
                      blurRadius: 0.1
                  ),
                  ]
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: "Buraya yazınız...",
                      hintStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff888790))
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("- Deneyim hakkında bilgilendirme ve program işleyişini belirtin.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Container(
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              alignment:  Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [ BoxShadow(
                      blurRadius: 0.1
                  ),
                  ]
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: "Buraya yazınız...",
                      hintStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff888790))
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("- Deneyimin ayırt edici özelliklerinden bahsedin.",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Container(
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              alignment:  Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 0.1
                  ),
                  ]
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: "Buraya yazınız...",
                      hintStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xff888790))
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 10.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => signUp6StepsLeft(),
                    ),
                  );
                },
                    child: ileriButtonSvg),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: sevenStepsLeftSvg,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 7 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
