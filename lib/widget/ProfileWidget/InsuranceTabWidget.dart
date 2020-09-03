import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

class InsuranceTabWidget extends StatefulWidget {
  @override
  _InsuranceTabWidgetState createState() => _InsuranceTabWidgetState();
}

class _InsuranceTabWidgetState extends State<InsuranceTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 2,
              md: 2,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("#",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("01",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),),
                    Text("02",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 4,
              md: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Insurance Name",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Metlife Alico",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),),
                    Text("Metlife Alico",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 3,
              md: 3,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Expires On",style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),),
                      SizedBox(
                        height: 10,
                      ),


                      Text("22-09-2020",style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13,
                        ),
                      ),),
                      Text("22-09-2020",style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13,
                        ),
                      ),),
                    ]),
              ),
            ),

            ResponsiveGridCol(
              xs: 3,
              md: 3,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("",style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),),
                      SizedBox(
                        height: 10,
                      ),


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Edit",style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),),
                          SizedBox(width: 10,),
                          Text("Renew",style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Edit",style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),),
                          SizedBox(width: 10,),
                          Text("Renew",style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
