import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alohewan/models/service_model.dart';
import 'package:alohewan/models/doctor_model.dart';

var selectedService = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const SizedBox(height: 20),
        _greeting(),
        const SizedBox(height: 17),
        _card(),
        const SizedBox(height: 20),
        _search(),
        const SizedBox(height: 20),
        _services(),
        const SizedBox(height: 20),
        _bottomCard()
      ],
    )));
  }

  Expanded _bottomCard() {
    return Expanded(
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // physics: const  AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0XFF35385A).withOpacity(0.12),
                            blurRadius: 30,
                            offset: const Offset(0, 2))
                      ]),
                  child: Row(
                    children: [
                    Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          doctors[index].image,
                          height: 103,
                          width: 88,
                        )),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          doctors[index].name,
                          style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF35385A)),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          
                          children: [
                            RichText(
                                text: TextSpan(
                                    text:
                                        ("Service : ${doctors[index].service.join(', ')}"),
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        color: const Color(0xFF35385A)))),
                          ],
                        ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                        Icon(FeatherIcons.mapPin, color: Color.fromARGB(255, 86, 234, 42), size: 14,),
                                        const SizedBox(width: 5),
                                        Text(doctors[index].distance, 
                                        style: GoogleFonts.manrope(fontSize: 12, color: const Color(0xFFACA3A3),))
                                      ],),
                                    )
                      ],
                    )
                  ]),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 11),
            itemCount: doctors.length),
      );
  }

  SizedBox _services() {
    return SizedBox(
        height: 40,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: selectedService == index
                    ? const Color(0xFF818AF9)
                    : const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                Service.all()[index],
                style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: selectedService == index
                      ? const Color(0xFFF5F5F5)
                      : const Color(0xFFCACACA),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemCount: Service.all().length,
        ));
  }

  Widget _search() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF5F5F5)),
        child: TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(borderSide: BorderSide.none),
            prefixIcon:
                Icon(FeatherIcons.search, color: const Color(0xFFADACAD)),
            hintText: "Search for your Doctor",
            hintStyle: GoogleFonts.manrope(
                fontSize: 14,
                color: const Color(0xFFCACACA),
                height: 150 / 100),
          ),
        ));
  }

  AspectRatio _card() {
    return AspectRatio(
      aspectRatio: 336 / 184,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF818AF9),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/backround_card.png',
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                    text: "Your",
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 231, 228, 228),
                        height: 150 / 100),
                    children: const [
                      TextSpan(
                          text: " Asep ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                        text: 'will get \n Vaccinated ',
                      ),
                      TextSpan(
                          text: 'tomorrow \n at 9:00 AM',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800))
                    ],
                  )),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('See details',
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              color: const Color(0xFF818AF9),
                              fontWeight: FontWeight.w800,
                            )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _greeting() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hello Adrian!',
            style: GoogleFonts.manrope(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Stack(children: [
            IconButton(
                onPressed: () {}, icon: const Icon(FeatherIcons.shoppingBag)),
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE91E63), shape: BoxShape.circle),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      '4',
                      style: GoogleFonts.mPlus1(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w800),
                    ),
                  ))),
            )
          ])
        ],
      ),
    );
  }
}
