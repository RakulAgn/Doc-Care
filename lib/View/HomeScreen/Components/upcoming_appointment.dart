import 'package:flutter/material.dart';

class UpcomingAppoitments extends StatelessWidget {
  const UpcomingAppoitments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upcoming Appointments",
            style: TextStyle(
                fontSize: MediaQuery.of(context).textScaleFactor * 15,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            height: MediaQuery.of(context).size.height * 0.13,
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
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.025,
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.002),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(48, 186, 144, 248),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "20 Jan",
                      style: TextStyle(
                        color: const Color(0xFF9146ff),
                        fontFamily: 'Circular Std',
                        fontSize: MediaQuery.of(context).size.width * 0.021,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Problems with dental Medical",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Circular Std',
                          fontSize: MediaQuery.of(context).size.width * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(48, 186, 144, 248),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 9,
                              color: Color.fromARGB(48, 186, 144, 248),
                              offset: Offset(2, 1),
                            ),
                          ],
                        ),
                        child: Icon(Icons.message_outlined,
                            color: const Color(0xFF9146ff),
                            size: MediaQuery.of(context).size.width * 0.065),
                      ),
                    ],
                  ),
                  Text(
                    "Dr.Anna Nicolas",
                    style: TextStyle(
                      color: const Color.fromARGB(123, 0, 0, 0),
                      fontFamily: 'Circular Std',
                      fontSize: MediaQuery.of(context).textScaleFactor * 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
