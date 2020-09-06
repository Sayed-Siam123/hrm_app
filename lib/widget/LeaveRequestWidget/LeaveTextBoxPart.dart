import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LeaveTextBoxPart extends StatefulWidget {
  @override
  _LeaveTextBoxPartState createState() => _LeaveTextBoxPartState();
}

class _LeaveTextBoxPartState extends State<LeaveTextBoxPart> {

  DateTime selectedFromDate = DateTime.now();
  DateTime selectedToDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yyyy');
  String formatted;
  TextEditingController fromDate = new TextEditingController();
  TextEditingController toDate = new TextEditingController();
  TextEditingController leaveCause = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();

  String dropdownValue;


  _selectFromDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedFromDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedFromDate)
      setState(() {
        selectedFromDate = picked;
      });
    formatted = formatter.format(selectedFromDate);
    print(formatted);
    fromDate.text = formatted;
  }

  _selectToDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedToDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedToDate)
      setState(() {
        selectedToDate = picked;
      });
    formatted = formatter.format(selectedToDate);
    print(formatted);
    toDate.text = formatted;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 210, 30, 0),
      height: MediaQuery.of(context).size.height * .67,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9)),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 5.0,
              offset: Offset(1, 1),
              color: Colors.grey.shade600.withOpacity(0.1)),
        ],
      ),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 55,
                  margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
                  padding: EdgeInsets.fromLTRB(10, 4, 5, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          spreadRadius: 5.0,
                          offset: Offset(1, 1),
                          color: Colors.grey.shade600
                              .withOpacity(0.1)),
                    ],
                  ),
                  child: DropdownButton<String>(
                      hint: Text(
                        "Select Leave Type",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                      isExpanded: true,
                      value: dropdownValue,
                      icon: Icon(Icons.unfold_more),
                      iconSize: 25,
                      underline: SizedBox(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                        print(dropdownValue);
                      },
                      items: <String>[
                        'Casual',
                        'Medical',
                        'Urgent',
                      ].map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins(
                                  textStyle:
                                  TextStyle(fontSize: 16),
                                ),
                              ),
                            );
                          }).toList()),
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 55,
                        width:
                        MediaQuery.of(context).size.width *
                            .38,
                        margin:
                        EdgeInsets.fromLTRB(11, 15, 0, 0),
                        padding:
                        EdgeInsets.fromLTRB(15, 3, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 5.0,
                                offset: Offset(1, 1),
                                color: Colors.grey.shade600
                                    .withOpacity(0.1)),
                          ],
                        ),
                        child: TextField(
                          controller: fromDate,
                          enabled: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.calendar_today,
                                color: Theme.of(context)
                                    .buttonColor
                                    .withOpacity(0.4),
                              ),
                              onPressed: () {
                                _selectFromDate(context);
                                print("From");
                              },
                            ),
                            hintText: "From",
                            hintStyle: GoogleFonts.poppins(
                              textStyle:
                              TextStyle(fontSize: 16),
                            ),
                          ),
                        )),
                    Container(
                        height: 55,
                        width:
                        MediaQuery.of(context).size.width *
                            .38,
                        margin:
                        EdgeInsets.fromLTRB(0, 15, 11, 0),
                        padding:
                        EdgeInsets.fromLTRB(15, 3, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5.0,
                                spreadRadius: 5.0,
                                offset: Offset(1, 1),
                                color: Colors.grey.shade600
                                    .withOpacity(0.1)),
                          ],
                        ),
                        child: TextField(
                          controller: toDate,
                          enabled: true,
                          readOnly: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.calendar_today,
                                color: Theme.of(context)
                                    .buttonColor
                                    .withOpacity(0.4),
                              ),
                              onPressed: () {
                                _selectToDate(context);
                                print("To");
                              },
                            ),
                            hintText: "To",
                            hintStyle: GoogleFonts.poppins(
                              textStyle:
                              TextStyle(fontSize: 16),
                            ),
                          ),
                        )),
                  ],
                ),

                Container(
                    height: 55,
                    width:
                    MediaQuery.of(context).size.width,
                    margin:
                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                    padding:
                    EdgeInsets.fromLTRB(15, 3, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            spreadRadius: 5.0,
                            offset: Offset(1, 1),
                            color: Colors.grey.shade600
                                .withOpacity(0.1)),
                      ],
                    ),
                    child: TextField(
                      controller: leaveCause,
                      enabled: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Leave reason",
                        hintStyle: GoogleFonts.poppins(
                          textStyle:
                          TextStyle(fontSize: 16),
                        ),
                      ),
                    )),

                Container(
                    height: 55,
                    width:
                    MediaQuery.of(context).size.width,
                    margin:
                    EdgeInsets.fromLTRB(15, 15, 15, 0),
                    padding:
                    EdgeInsets.fromLTRB(15, 3, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            spreadRadius: 5.0,
                            offset: Offset(1, 1),
                            color: Colors.grey.shade600
                                .withOpacity(0.1)),
                      ],
                    ),
                    child: TextField(
                      controller: phoneNumber,
                      enabled: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Phone Number",
                        hintStyle: GoogleFonts.poppins(
                          textStyle:
                          TextStyle(fontSize: 16),
                        ),
                      ),
                    )),

                Container(
                  height: 55,
                  width:
                  MediaQuery.of(context).size.width,
                  margin:
                  EdgeInsets.fromLTRB(15, 115, 15, 0),
                  padding:
                  EdgeInsets.fromLTRB(15, 3, 5, 0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).buttonColor,
                    borderRadius:
                    BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          spreadRadius: 5.0,
                          offset: Offset(1, 1),
                          color: Colors.grey.shade600
                              .withOpacity(0.1)),
                    ],
                  ),
                  child: Center(

                    child: Text("APPLY",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
