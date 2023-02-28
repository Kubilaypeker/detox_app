import 'package:detoxapp/Screens/signUpIn10steps/signUp4StepsLeft.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_buttons_ns/grouped_buttons_ns.dart';
import 'package:time_picker_sheet/widget/sheet.dart';
import 'package:time_picker_sheet/widget/time_picker.dart';


class signUp5StepsLeft extends StatefulWidget {
  const signUp5StepsLeft({Key? key}) : super(key: key);

  @override
  State<signUp5StepsLeft> createState() => _signUp5StepsLeftState();
}

class _signUp5StepsLeftState extends State<signUp5StepsLeft> {

  DateTime dateTimeSelected = DateTime.now();

  void _openTimePickerSheet(BuildContext context) async {
    final result = await TimePicker.show<DateTime?>(
      context: context,
      sheet: TimePickerSheet(
        wheelNumberSelectedStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.sp, color: const Color(0xffE50913)),
        hourTitleStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.sp, color: const Color(0xffE50913)),
        minuteTitleStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.sp, color: const Color(0xffE50913)),
        sheetCloseIconColor: const Color(0xffE50913),
        saveButtonColor: const Color(0xffE50913),
        sheetTitle: 'Başlangıç Saati Seçin',
        minuteTitle: 'Dakika',
        hourTitle: 'Saat',
        saveButtonText: 'Seç',
      ),
    );

    if (result != null) {
      setState(() {
        dateTimeSelected = result;
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    final String five = "assets/svgfiles/5.svg";
    final Widget fiveSvg = SvgPicture.asset(five);

    final String clock = "assets/svgfiles/clock.svg";
    final Widget clockSvg = SvgPicture.asset(clock);

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
          onPressed: () {},
          iconSize: 7,
          icon: fiveSvg,
        ),
        title: Text("Uygunluk Durumu",
          style: GoogleFonts.montserrat(fontSize: 20.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("Bu deneyim için uygun çalışma seçin",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            alignment: Alignment.centerLeft,
            child: Text("Gün Seçin",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xff1A1A1A)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width-44,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.1
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: CheckboxGroup(
              labelStyle: GoogleFonts.montserrat(fontSize: 15.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),
              activeColor: Color(0xffE50913),
                labels: <String>[
                  "Hafta içi her gün",
                  "Hafta sonu (Cumartesi, Pazar)",
                  "Her Pazartesi",
                  "Her Salı",
                  "Her Çarşamba",
                  "Her Perşembe",
                  "Her Cuma",
                  "Her Cumartesi",
                  "Her Pazar"
                ],
                onSelected: (List<String> checked) => print(checked.toString())
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30.w, top: 10.h),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.w),
                  child: clockSvg
              ),
              Text("Başlangıç Saati", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: Colors.black)),
            ],
          ),
    ),
          Container(
            padding: EdgeInsets.only(left: 30.w, top: 5.h),
            alignment: Alignment.centerLeft,
            child: Text("Başlangıç için saat seçin:",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color(0xff252525))),
          ),

          Container(
            padding: EdgeInsets.only(left: 30.w, top: 5.h),
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)
              ),
              onPressed: () => _openTimePickerSheet(context),
              child: Text('${dateTimeSelected.hour}:${dateTimeSelected.minute}',
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14.sp, color: Colors.black),
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
                    MaterialPageRoute(builder: (context) => signUp4StepsLeft(),
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
            child: Text("Son 5 adım",
              style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16.sp, color: const Color(0xffADADAD)),
            ),
          ),
        ],
      ),
    );
  }
}
