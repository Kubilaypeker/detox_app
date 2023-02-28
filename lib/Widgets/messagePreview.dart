import 'package:detoxapp/Screens/chattingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class messagePreview extends StatefulWidget {
  const messagePreview({Key? key}) : super(key: key);

  @override
  State<messagePreview> createState() => _messagePreviewState();
}

class _messagePreviewState extends State<messagePreview> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => chattingPage(),
        ),
      );
    },
      child: Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffD4D4D4)))),
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/jpgfiles/profilePhoto.jpg"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            width: MediaQuery.of(context).size.width-110,
            child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Özlem Sönmez",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: const Color(0xff1A1A1A)
                ),
              ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Gelen mesajın tumbnail örnegi burada iki satır olarak gözükecek.",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: const Color(0xff757575)
                  ),
                ),
              ),
            ],
          ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("12.45", style: GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color(0xff1A1A1A)),),
                Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: Color(0xffE50913),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center( child: Text("3", style: GoogleFonts.poppins(color: Colors.white),),),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
