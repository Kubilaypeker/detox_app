import 'package:detoxapp/Widgets/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/productPreview.dart';

class favoritesPage extends StatefulWidget {
  const favoritesPage({Key? key}) : super(key: key);

  @override
  State<favoritesPage> createState() => _favoritesPageState();
}

class _favoritesPageState extends State<favoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      appBar: AppBar(
        backgroundColor: const Color(0xffFCFCFC),
        elevation: 1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Favoriler", style: GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w500, color: const Color(0xff1A1A1A)),),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 165/224,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
        ),
        children: const [
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
          productPreview(),
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
