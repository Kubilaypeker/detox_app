import 'package:detoxapp/Screens/signUpIn10steps/signUp8StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp9stepsLeft extends StatefulWidget {
  const signUp9stepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp9stepsLeft> createState() => _signUp9stepsLeftState();
}

class _signUp9stepsLeftState extends State<signUp9stepsLeft> {
  @override
  Widget build(BuildContext context) {

    final String camera = "assets/svgfiles/camera.svg";
    final Widget cameraSvg = SvgPicture.asset(camera);

    final String uploadPhoto = "assets/svgfiles/uploadPhoto.svg";
    final Widget uploadPhotoSvg = SvgPicture.asset(uploadPhoto);

    final String geriButton = "assets/svgfiles/geriButton.svg";
    final Widget geriButtonSvg = SvgPicture.asset(geriButton);

    final String ileriButton = "assets/svgfiles/ileriButton.svg";
    final Widget ileriButtonSvg = SvgPicture.asset(ileriButton);

    final String nineStepsLeft = "assets/svgfiles/9stepsLeft.svg";
    final Widget nineStepsLeftSvg = SvgPicture.asset(nineStepsLeft);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          iconSize: 7,
          icon: cameraSvg,
        ),
        title: Text("Fotoğraflar",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text("Fotoğraflarınızı ekleyin",
              style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Text("Gönderilen fotoğraflar deneyim sayfanızda yayımlanmadan önce her fotoğrafı inceleyeceğiz.",
              style: GoogleFonts.montserrat(fontSize: 15.sp, fontWeight: FontWeight.w400, color: const Color(0xff757575)),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 25.h),
            child: Text("En az 3 fotoğraf yükleyin",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Wrap(
            children: [
              TextButton(
                  onPressed: () {},
                  child: uploadPhotoSvg,
              ),
              TextButton(
                  onPressed: () {},
                  child: uploadPhotoSvg,
              ),
              TextButton(
                  onPressed: () {},
                  child: uploadPhotoSvg,
                ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 25.h),
            child: Text("Fotoğraflarda aranan şartlar:",
              style: GoogleFonts.montserrat(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, top: 25.h),
            child: Text("- Katılanları etkinlik anlarında gösteren kareler\n\n- Deneyimi olduğu gibi gösteren fotoğraflar\n\n - Abartılı filtreler, görüntü üzerine bindirilmiş metin,grafik veya figüran olmamalıdır.",
              style: GoogleFonts.montserrat(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xffADADAD)),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 110.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => signUp8StepsLeft(),
                    ),
                  );
                },
                    child: ileriButtonSvg),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: nineStepsLeftSvg,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text("Son 9 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
