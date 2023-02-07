import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBeach extends StatefulWidget {
  final String name;
  final String location;
  final String rating;
  final String imagePath;
  MyBeach(
      {Key? key,
      required this.name,
      required this.location,
      required this.rating,
      required this.imagePath})
      : super(key: key);
  static const IconData heart = IconData(0xf442, fontFamily: "Urbanist");

  @override
  State<MyBeach> createState() => _MyBeachState();
}

class _MyBeachState extends State<MyBeach> {
  bool isliked = false;


  void like() {
    print("fafhga");
    setState(() {
      isliked=!isliked;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(elevation: 0, backgroundColor: Color(0x00000000)),
      body: Stack(
        children: [
          GestureDetector(
            onDoubleTap: like,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.0),
                    Colors.black54,
                  ],
                  stops: [0.95, 1.0],
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.imagePath),
                ),
              ),
            ),
          ),
          //like buttonrrr
          if (isliked)
            Positioned(
                right: 20,
                top: 50,
                child: IconButton(
                  onPressed: (){
                  },
                  icon: Icon(
                    (Icons.favorite),
                    color: Colors.red,
                    size: 30,
                  ),
                ))
          else
            Positioned(
                right: 20,
                top: 50,
                child: IconButton(
                  onPressed: (){
                  },
                  icon: Icon(
                    (Icons.favorite_border),
                    color: Colors.white,
                    size: 30,
                  ),
                )),
          Positioned(
              bottom: 180,
              left: 20,
              child: Text(
                widget.name,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: Colors.white)),
              )),

          Positioned(
            bottom: 200,
            right: 0,
            child: Row(
              children: [
                Image(image: AssetImage('assets/location.png')),
                Text(
                  widget.location,
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 140,
            left: 20,
            child: Container(
              child: Text(
                  "One of the most happening beaches in Goa, Baga Beach is where you",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14)),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 20,
            child: Container(
              child: Text(
                  " will find water sports, fine dining restaurants, bars, and clubs. Situated"
                  " in North Goa,Baga Beach is bordered by Calangute and Anjuna "
                  "Beaches.",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14)),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 20,
            child: Container(
              child: Text(
                  " in North Goa,Baga Beach is bordered by Calangute and Anjuna "
                  "Beaches.",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14)),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            child: Container(
              child: Text("Beaches.",
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14)),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.rating,
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.white,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              "₹15,000/person",
              style: TextStyle(
                  fontFamily: 'Urbanist', color: Colors.white, fontSize: 20),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text(
                  "Book now",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
