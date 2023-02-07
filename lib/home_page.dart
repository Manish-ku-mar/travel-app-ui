import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_assignment/beach_detail_page.dart';
import 'package:intern_assignment/utils/list_tile.dart';
import 'package:intern_assignment/utils/resort_tile.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List beaches = ["Buta Beach", "Baga Beach", "Lodhi Beach"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello, vineetha',
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
        ),
        leading: Image(image: AssetImage("assets/Ellipse 1.png")),
        actions: [const Image(image: AssetImage('assets/lamp.png'))],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Text("Where do you want to explore today? ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 24))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Seach")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Category",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w100)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/image 1648.png")),
                        Text(
                          "Beach",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14)),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/img.png")),
                      Text(
                        "Mountain",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBeach(
                                name: "Kuta Beach",
                                location: "Bali, Indonesia",
                                rating: "4.8",
                                imagePath: "assets/Rectangle 85-1.png")));
                  },
                  child: MyListTile(
                    name: "Kuta Beach",
                    location: "Bali, Indonesia",
                    rating: "4.8",
                    imagePath: "assets/Rectangle 85-1.png",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBeach(
                                name: "Baga Beach",
                                location: "Goa , India",
                                rating: "4.8",
                                imagePath: "assets/Rectangle 85.png")));
                  },
                  child: MyListTile(
                    name: "Baga Beach",
                    location: "Goa , India",
                    rating: "4.8",
                    imagePath: "assets/Rectangle 85.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Package",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w100)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyResort(
                name: "Kuta Resort",
                price: "20,000",
                rating: "4.8",
                location: "assets/unsplash_2gOxKj594nM-1.png"),
            MyResort(
                name: "Baga Beach Resort",
                price: "15,000",
                rating: "4.8",
                location: "assets/unsplash_2gOxKj594nM.png"),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
