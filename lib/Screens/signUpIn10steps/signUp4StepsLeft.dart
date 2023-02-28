import 'package:detoxapp/Screens/signUpIn10steps/signUp3StepsLeft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';


class signUp4StepsLeft extends StatefulWidget {
  const signUp4StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp4StepsLeft> createState() => _signUp4StepsLeftState();
}

class _signUp4StepsLeftState extends State<signUp4StepsLeft> {

  final List<bool> perPerson = <bool>[true, false, false];
  final List<bool> perWeek = <bool>[false, true, false];
  final List<bool> perHour = <bool>[false, false, true];

  int simpleIntInput = 1;

  @override
  Widget build(BuildContext context) {

    final String price = "assets/svgfiles/price.svg";
    final Widget priceSvg = SvgPicture.asset(price);

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
          icon: priceSvg,
        ),
        title: Text("Fiyat Belirleme",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            height: 80.h,
            alignment: Alignment.center,
            child: ToggleButtons(
            direction: Axis.horizontal,
            onPressed: (int index) {
              setState(() {
                // The button that is tapped is set to true, and the others to false.
                for (int i = 0; i < perPerson.length; i++) {
                  perPerson[i] = i == index;
                }
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: Color(0xffADADAD),
            selectedColor: Colors.black,
            fillColor: Colors.white,
            color: const Color(0xffA1A1A1),
            constraints: BoxConstraints(
              minHeight: 40.0.h,
              minWidth: 80.0.w,
            ),
            isSelected: perPerson,
            children: [
              Text('\t\tKişi Başı Fiyat\t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
              Text('\t\tHaftalık Fiyat \t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
              Text('\t\tSaatlik Fiyat\t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:Container(
            height: 65.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 0
                )
              ]
            ),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fiyat", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.sp),),
                Container(
                  child: Text("150₺", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15.sp),)
                ),
              ],
            ),
          ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child:Container(
              height: 65.h,
              decoration: BoxDecoration(
                  color: Color(0xff4CBC79),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 0
                    )
                  ]
              ),
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kazancın", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16.sp),),
                  Container(
                      child: Text("30₺", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.sp),)
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Text("Kampanya Oluştur",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 20.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 0
                    )
                  ]
              ),
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kişi Sayısı", style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.sp),),
                  Container(
                      child: QuantityInput(
                          decoration: const InputDecoration(border: InputBorder.none),
                          iconColor: const Color(0xff1A1A1A),
                          buttonColor: Colors.white,
                          value: simpleIntInput,
                          onChanged: (value) => setState(() => simpleIntInput = int.parse(value.replaceAll(',', '')))
                      ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 65.h,
            width: 360.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
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
                  hint: Text("İndirim Oranı\t\t\t\t\t\t\t\t\t\t\t\t\t", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18.sp, color: const Color(0xff1A1A1A)),),
                  items: [
                    DropdownMenuItem(value: 1, child: Text("%15", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp,),)),
                    DropdownMenuItem(value: 2,child: Text("%30", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp,),)),
                    DropdownMenuItem(value: 3, child: Text("%40", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp,),)),
                  ], onChanged: (value) {  },
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: TextButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black),),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: Text("Oluştur", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.black)),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 50.h,left: 20.w, right: 20.w),
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
                    MaterialPageRoute(builder: (context) => signUp3StepsLeft(),
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
            child: Text("Son 4 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
