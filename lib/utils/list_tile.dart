import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  final String name;
  final String location;
  final String rating;
  final String imagePath;
  const MyListTile(
      {Key? key,
      required this.name,
      required this.location,
      required this.rating,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
              //like button
              Positioned(
                  right: 15,
                  top: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  )),
              Positioned(
                  bottom: 80,
                  left: 15,
                  child: Text(
                    name,
                    style:  GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14,color: Colors.white)),
                  )),

              Positioned(
                bottom: 45,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage('assets/location.png')),
                    Text(location,style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14,color: Colors.white)))
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(Icons.star, color: Colors.yellow,size: 20,),
                    Icon(Icons.star, color: Colors.yellow,size: 20),
                    Icon(Icons.star, color: Colors.yellow,size: 20),
                    Icon(
                      Icons.star,
                      color: Colors.white,size: 20
                    ),
                    Text(rating,style: GoogleFonts.poppins(
    textStyle: const TextStyle(
    fontWeight: FontWeight.w600, fontSize: 14,color: Colors.white)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
