import 'package:detoxapp/Screens/signUpIn10steps/signUpLastStep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp2StepsLeft extends StatefulWidget {
  const signUp2StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp2StepsLeft> createState() => _signUp2StepsLeftState();
}

class _signUp2StepsLeftState extends State<signUp2StepsLeft> {
  @override
  Widget build(BuildContext context) {

    final String upload = "assets/svgfiles/uploadProfilePhoto.svg";
    final Widget uploadSvg = SvgPicture.asset(upload);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String fiveStepsLeft = "assets/svgfiles/5stepsLeft.svg";
    final Widget fiveStepsLeftSvg = SvgPicture.asset(fiveStepsLeft);

    final String nameFrame = 'assets/svgfiles/nameFrame.svg';
    final Widget nameFrameSvg = SvgPicture.asset(nameFrame);

    final String surnameFrame = 'assets/svgfiles/surnameFrame.svg';
    final Widget surnameFrameSvg = SvgPicture.asset(surnameFrame);

    final String frame = 'assets/svgfiles/passwordFrame.svg';
    final Widget frameSvg = SvgPicture.asset(frame);

    final TextEditingController name = TextEditingController();
    final TextEditingController surname = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: ListView(
        children: [
          SizedBox(height: 50.h,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child:IconButton(onPressed: () {},
              icon: uploadSvg,
              iconSize: 100.h,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Kişisel Profiliniz",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 24.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: nameFrameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.only(left: 22.w,top: 40.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "İsim",
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: name,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: surnameFrameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.only(left: 22.w, top: 40.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Soyad",
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: surname,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("Sizi bu deneyim için ideal hizmet sağlayıcı yapan nitelikleriniz nelerdir?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
            child: Text("Bu deneyim misafirlere hangi hizmetleri sağlamaktadır?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 15.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 50.h,
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
                      hintText: "Buraya filtre yazınız...",
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
                    MaterialPageRoute(builder: (context) => signUpLastStep(),
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
            child: Text("Son 2 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
