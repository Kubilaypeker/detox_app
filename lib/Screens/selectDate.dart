import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';

class selectDate extends StatefulWidget {
  const selectDate({Key? key}) : super(key: key);

  @override
  State<selectDate> createState() => _selectDateState();
}

class _selectDateState extends State<selectDate> {

  final List<bool> hour1 = <bool>[true, false, false];
  final List<bool> hour2 = <bool>[false, true, false];
  final List<bool> hour3 = <bool>[false, false, true];

  int simpleIntInput = 1;

  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {

    final String backButton = 'assets/svgfiles/backButton.svg';
    final Widget backButtonSvg = SvgPicture.asset(backButton);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F7F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 7,
            icon: backButtonSvg
        ),
        title: Container(
          padding: EdgeInsets.only(top: 10.h),
          child:Text("Gardone Riviera\nKamp Alanı", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w600, color: const Color(0xff1A1A1A)),),
        ),
    actions: [
          Container(
            padding: EdgeInsets.only(right: 15.w, top: 5.h),
            child: Image.asset("assets/jpgfiles/profilePhoto.jpg"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child:
              Text("Fiyat",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18.sp),
              ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: DatePicker(
              DateTime.now(),
              locale: "tr_TR",
              initialSelectedDate: DateTime.now(),
              selectionColor: const Color(0xffEA3A42),
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                });
              },
            ),
          ),
        ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child:
            Text("Saat",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            height: 80.h,
            alignment: Alignment.center,
            child: ToggleButtons(
              direction: Axis.horizontal,
              onPressed: (int index) {
                setState(() {
                  // The button that is tapped is set to true, and the others to false.
                  for (int i = 0; i < hour1.length; i++) {
                    hour1[i] = i == index;
                  }
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: Color(0xffADADAD),
              selectedColor: Colors.white,
              fillColor: const Color(0xffEA3A42),
              color: const Color(0xffA1A1A1),
              constraints: BoxConstraints(
                minHeight: 40.0.h,
                minWidth: 80.0.w,
              ),
              isSelected: hour1,
              children: [
                Text('\t\t08:30\t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
                Text('\t\t09:00\t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
                Text('\t\t10:30\t\t', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14.sp),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child:
            Text("Konuklar",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(blurRadius: 0.1)
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.h),
                        alignment: Alignment.centerLeft,
                        child: Text("Yetişkin", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xff1A1A1A)),),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                          child: Text("15 yaş üstü", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xffADADAD)))
                      ),
                    ],
                  ),
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
          SizedBox(height: 10.h,),
          Container(
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.1)
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.h),
                        alignment: Alignment.centerLeft,
                        child: Text("Çocuk", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xff1A1A1A)),),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text("0-15 yaş arası", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16.sp, color: const Color(0xffADADAD)))
                      ),
                    ],
                  ),
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
        ],
      ),
      bottomNavigationBar: Container(
        height: 72.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w, top: 5.h),
              child: Column(
              children: [
                Text("239₺", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20.sp, color: Colors.black),),
                Text("Toplam Tutar", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Colors.black),),
              ],
            ),
    ),
            Container(
              padding: EdgeInsets.only(right: 16.w),
              width: 164.w,
              height: 48.h,
              child: TextButton(
                onPressed: () {},
                child: Text("Şimdi Al", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffE50913))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
