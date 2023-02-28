import 'package:detoxapp/Screens/signUpIn10steps/signUp9stepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class signUp10StepsLeft extends StatefulWidget {
  const signUp10StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp10StepsLeft> createState() => _signUp10StepsLeftState();
}

class _signUp10StepsLeftState extends State<signUp10StepsLeft> {
  @override
  Widget build(BuildContext context) {

    final String temelBilgiler = "assets/svgfiles/temelBilgilerSvg.svg";
    final Widget temelBilgilerSvg = SvgPicture.asset(temelBilgiler);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String tenStepsLeft = "assets/svgfiles/10stepsLeft.svg";
    final Widget tenStepsLeftSvg = SvgPicture.asset(tenStepsLeft);

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
            icon: temelBilgilerSvg,
        ),
        title: Text("Temel Bilgiler",
        style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            alignment: Alignment.center,
            child: Text("Deneyiminizi en iyi anlatan başlığı yazın",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff252525)),
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
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            alignment: Alignment.center,
            child: Text("Deneyimi hangi ilde sunuyorsunuz?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff252525)),
            ),
          ),
          Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  alignment: Alignment.center,
                  child: dropButtonSvg,
                ),
                Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            alignment: Alignment.center,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
              borderRadius: BorderRadius.circular(16),
              hint: Text("Şehir Seçin\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18, color: const Color(0xffADADAD)),),
              items: [
                DropdownMenuItem(value: 1, child: Text("İzmir", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                DropdownMenuItem(value: 2,child: Text("Antalya", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                DropdownMenuItem(value: 3, child: Text("Muğla", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
              ], onChanged: (value) {  },
            ),
    ),
          ),
        ]
      ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            alignment: Alignment.center,
            child: Text("Deneyiminizin konusu ne olacak?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff252525)),
            ),
          ),
          Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  alignment: Alignment.center,
                  child: dropButtonSvg,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  alignment: Alignment.center,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(16),
                      hint: Text("Kategori Seçin\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18, color: const Color(0xffADADAD)),),
                      items: [
                        DropdownMenuItem(value: 1, child: Text("Tekne", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                        DropdownMenuItem(value: 2,child: Text("Yürüyüş", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                        DropdownMenuItem(value: 3, child: Text("Kamp", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                        DropdownMenuItem(value: 3, child: Text("Snowboard", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                        DropdownMenuItem(value: 3, child: Text("Paraşüt", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16,),)),
                      ], onChanged: (value) {  },
                    ),
                  ),
                ),
              ]
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 190.h,left: 20.w, right: 20.w),
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
                  MaterialPageRoute(builder: (context) => signUp9stepsLeft(),
                  ),
                );
              },
                  child: ileriButtonSvg),
            ],
          ),
    ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: tenStepsLeftSvg,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 10 adım",
            style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
