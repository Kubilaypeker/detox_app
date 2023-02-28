import 'package:detoxapp/Widgets/bottomBar.dart';
import 'package:detoxapp/Widgets/messagePreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class messagesPage extends StatefulWidget {
  const messagesPage({Key? key}) : super(key: key);

  @override
  State<messagesPage> createState() => _messagesPageState();
}

class _messagesPageState extends State<messagesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFCFCFC),
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text("Gelen Kutusu", style: GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
            labelColor: Colors.black,
            indicatorColor: const Color(0xffE50913),
            tabs: const [
              Tab(text: "Mesajlar",),
              Tab(text: "Bildirimler")
            ],
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
      children: [
        Scaffold(
          body: ListView(
            children: const [
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
              messagePreview(),
            ],
          ),
        ),

      ],
    ),
        bottomNavigationBar: const bottomBar(),
      ),
    );
  }
}
