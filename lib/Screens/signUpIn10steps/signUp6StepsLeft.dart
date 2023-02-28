import 'package:detoxapp/Screens/signUpIn10steps/signUp5StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp6StepsLeft extends StatefulWidget {
  const signUp6StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp6StepsLeft> createState() => _signUp6StepsLeftState();
}

class _signUp6StepsLeftState extends State<signUp6StepsLeft> {
  @override
  Widget build(BuildContext context) {

    final String location = "assets/svgfiles/location.svg";
    final Widget locationSvg = SvgPicture.asset(location);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String sixStepsLeft = "assets/svgfiles/6stepsLeft.svg";
    final Widget sixStepsLeftSvg = SvgPicture.asset(sixStepsLeft);

    final String dropButton = "assets/svgfiles/dropButtonFrame.svg";
    final Widget dropButtonSvg = SvgPicture.asset(dropButton);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          iconSize: 7,
          icon: locationSvg,
        ),
        title: Text("Konum",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("Deneyimin yapılacağı konumu ekleyin",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            child: Image.asset("assets/jpgfiles/map.jpg"),
          ),
          Container(
            height: 65.h,
            width: 360.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.1,
                  color: Colors.black,
                )
              ]
            ),
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
            alignment: Alignment.center,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                borderRadius: BorderRadius.circular(16),
                hint: Text("Kayıtlı Adreslerim\t\t\t\t\t\t\t\t\t", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18.sp, color: const Color(0xff1A1A1A)),),
                items: [
                  DropdownMenuItem(value: 1, child: Text("Adres 1", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp,),)),
                  DropdownMenuItem(value: 2,child: Text("Adres 2", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp,),)),
                  DropdownMenuItem(value: 3, child: Text("Adres 3", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp,),)),
                ], onChanged: (value) {  },
              ),
            ),
          ),
    ),
          Container(
            padding: EdgeInsets.only(left: 20.w,),
            child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                alignment: Alignment.centerLeft,
                child: Text("Buluşma noktası",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xff1A1A1A)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                alignment: Alignment.centerLeft,
                child: Text("(İsteğe bağlı)",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color(0xff888790)),
                ),
              ),
            ],
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
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 115.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => signUp5StepsLeft(),
                    ),
                  );
                },
                    child: ileriButtonSvg),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: sixStepsLeftSvg,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 6 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
