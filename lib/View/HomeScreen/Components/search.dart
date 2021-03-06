// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choice_chip.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/doctor.svg',
            width: 200,
            height: 200,
          ),
        ),
        Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.18,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 9,
                    color: Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.018),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.080,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                            color: Color.fromARGB(255, 197, 197, 204),
                          ),
                          suffixIcon: Container(
                            height: MediaQuery.of(context).size.height * 0.080,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 9,
                                  color: Color.fromARGB(255, 231, 231, 231),
                                  offset: Offset(2, 1),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Icon(Icons.mic),
                              onPressed: () {},
                              color: Color.fromARGB(255, 197, 197, 204),
                            ),
                          ),
                          hintText: "Search for a doctor,Symtopms, etc",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 195, 196, 197),
                              fontSize: 13),
                          filled: true,
                          fillColor: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ChoiceChipDisplay(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
