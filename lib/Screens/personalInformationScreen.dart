import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class personalinfoScreen extends StatefulWidget {
  const personalinfoScreen({Key? key}) : super(key: key);

  @override
  State<personalinfoScreen> createState() => _personalinfoScreenState();
}

class _personalinfoScreenState extends State<personalinfoScreen> {
  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    final String nameFrame = 'assets/svgfiles/nameFrame.svg';
    final Widget nameFrameSvg = SvgPicture.asset(nameFrame);

    final String surnameFrame = 'assets/svgfiles/surnameFrame.svg';
    final Widget surnameFrameSvg = SvgPicture.asset(surnameFrame);

    final String frame = 'assets/svgfiles/passwordFrame.svg';
    final Widget frameSvg = SvgPicture.asset(frame);

    final TextEditingController name = TextEditingController();
    final TextEditingController surname = TextEditingController();
    final TextEditingController birthDate = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Scaffold(
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
          Padding(padding: EdgeInsets.only(left: 20.w, top: 20.h),
          child: Text("Kişisel Bilgiler",
            style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xff1A1A1A)),
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
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
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
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: frameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.only(left: 22.w, top: 30.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Doğum tarihiniz",
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: birthDate,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: frameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.only(left: 22.w, top: 30.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "E-mail",
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: email,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: frameSvg,
                padding: EdgeInsets.only(top: 30.h),
              ),
              Container(
                padding: EdgeInsets.only(left: 22.w, top: 30.h),
                child: Card(
                  color: Colors.white.withOpacity(0),
                  elevation: 0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(fontSize: 16.sp, color: Colors.black),
                    controller: password,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 12.w, top: 15.h, right: 12.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(onPressed: ()  {},
              child: Text("Üyeliği Tamamla", style: GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w500, color: Colors.white),),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffE50913)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
