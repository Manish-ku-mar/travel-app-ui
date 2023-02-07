import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyResort extends StatefulWidget {
  final String name;
  final String price;
  final String rating;
  final String location;
  const MyResort(
      {Key? key,
      required this.name,
      required this.price,
      required this.rating,
      required this.location})
      : super(key: key);
  static const IconData heart = IconData(0xf442, fontFamily: 'Urbanist');

  @override
  State<MyResort> createState() => _MyResortState();
}

class _MyResortState extends State<MyResort> {
  bool isliked = false;

  void like() {
    print("fafhga");
    setState(() {
      isliked = !isliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(image: AssetImage(widget.location))),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                    Text(
                      "\₹${widget.price}",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.red)),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          widget.rating,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14)),
                        )
                      ],
                    ),
                    Text(
                      "A resort is a place used for vacation, relaxation or as a day...",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 14)),
                    )
                  ],
                ),
              ),
            ),
            if (isliked)
              Padding(
                  padding: EdgeInsets.only(bottom: 100, right: 20),
                  child: GestureDetector(
                      onTap: like,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      )))
            else
              Padding(
                  padding: EdgeInsets.only(bottom: 100, right: 20),
                  child: GestureDetector(
                      onTap: like,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )))
          ],
        ),
      ),
    );
  }
}
