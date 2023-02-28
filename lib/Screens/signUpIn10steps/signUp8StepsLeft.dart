import 'package:detoxapp/Screens/signUpIn10steps/signUp7StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';

class signUp8StepsLeft extends StatefulWidget {
  const signUp8StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp8StepsLeft> createState() => _signUp8StepsLeftState();
}

class _signUp8StepsLeftState extends State<signUp8StepsLeft> {

  int simpleIntInput = 1;
  @override
  Widget build(BuildContext context) {

    final String group = "assets/svgfiles/grupBüyüklüğü.svg";
    final Widget groupSvg = SvgPicture.asset(group);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String eightStepsLeft = "assets/svgfiles/8stepsLeft.svg";
    final Widget eightStepsLeftSvg = SvgPicture.asset(eightStepsLeft);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          iconSize: 7,
          icon: groupSvg,
        ),
        title: Text("Grup Büyüklüğü",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text("Maksimum Katılımcı Sayısı",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text("Bu deneyime en uygun büyüklüğü belirleyin. Yalnızca bir kişi bile rezervasyon yapsa hizmet vermeniz beklenecektir.",
              style: GoogleFonts.montserrat(fontSize: 15.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            alignment: Alignment.centerLeft,
            child: SizedBox(
            height: 160.h,
            width: 200.w,
            child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide( color: const Color(0xffD4D4D4), strokeAlign: BorderSide.strokeAlignInside))
                ),
                child: Text("Kişi Sayısı", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w500),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10.h),
                child: Text("Maksimum", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color(0xff757575)),),),
              QuantityInput(
                decoration: InputDecoration(border: InputBorder.none),
                iconColor: const Color(0xff1A1A1A),
                buttonColor: Colors.white,
                  value: simpleIntInput,
                  onChanged: (value) => setState(() => simpleIntInput = int.parse(value.replaceAll(',', '')))
              ),
            ],
          ),
          ),
    ),
    ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text("Minimum Katılımcı Sayısı",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 160.h,
              width: 200.w,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)
                ),
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide( color: const Color(0xffD4D4D4), strokeAlign: BorderSide.strokeAlignInside))
                      ),
                      child: Text("Kişi Sayısı", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w500),),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text("Minimum", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color(0xff757575)),),),
                    QuantityInput(
                        decoration: InputDecoration(border: InputBorder.none),
                        iconColor: const Color(0xff1A1A1A),
                        buttonColor: Colors.white,
                        value: simpleIntInput,
                        onChanged: (value) => setState(() => simpleIntInput = int.parse(value.replaceAll(',', '')))
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 60.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => signUp7StepsLeft(),
                    ),
                  );
                },
                    child: ileriButtonSvg),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: eightStepsLeftSvg,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 8 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
