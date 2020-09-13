import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hrm_app/models/LeaveApprovalUPDATEdata_model.dart';
import 'package:hrm_app/models/LeaveRequestPOSTdata_Model.dart';
import 'package:hrm_app/models/LeaveSummery_Mode.dart';
import 'package:hrm_app/models/LeaveTypeCategory_Model.dart';
import 'package:hrm_app/models/LeaveType_Model.dart';
import 'package:hrm_app/models/Notification_Model.dart';
import 'package:hrm_app/models/Userlogin_Model.dart';
import 'package:hrm_app/models/success_for_post.dart';
import 'package:hrm_app/resources/SharedPrefer.dart';
import 'package:http/http.dart' show Client;

class ApiProvider{

  Client client = Client();
  SessionManager prefs = SessionManager();

  Future<UserLogin_model> userlogin(Uid,Upas) async{

    print("data from apiprovider :: " + Uid.toString() + " " + Upas.toString());

    final response = await client.get("http://202.164.212.238:8056/WS.asmx/GetUserLogin?Uid="+Uid.toString()+"&Upas="+Upas.toString());

    //final response = await client.get("http://172.16.61.221:8056/WS.asmx/GetUserLogin?Uid="+Uid.toString()+"&Upas="+Upas.toString());

    if (response.statusCode == 200) {

      debugPrint("From singleGet Class:: "+json.decode(response.body).toString());
      return UserLogin_model.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }

  }


  Future<List<Notification_Model>> fetchAllNotificationdata(String Uid) async {

    print("${GlobalConfiguration().getString('api_base_url2')}");

    print(Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"GetUserNotifications?Uid="+Uid.toString());

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);

      debugPrint("From Get Class:: "+jsonResponse.toString());
      return jsonResponse.map((notificationdata) => new Notification_Model.fromJson(notificationdata)).toList();
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }

  Future<List<LeaveType_Model>> fetchAllLeaveTypedata(String Uid) async {


    print(Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"GetLeaveType?Uid="+Uid.toString());

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);

      debugPrint("From Get Class:: "+jsonResponse.toString());
      return jsonResponse.map((leavedata) => new LeaveType_Model.fromJson(leavedata)).toList();
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }

  Future<List<LeaveSummery_Model>> fetchAllLeaveSummerydata(String Uid) async {


    print(Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"GetLeaveSummary?Uid="+Uid.toString());

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);

      debugPrint("From Get Class:: "+jsonResponse.toString());
      return jsonResponse.map((leavedata) => new LeaveSummery_Model.fromJson(leavedata)).toList();
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }


  Future<List<LeaveType_Approve>> fetchAllLeaveApprovaldata(String Uid) async {


    print(Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"GetLeaveList?Uid="+Uid.toString());

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);

      debugPrint("From Get Class:: "+jsonResponse.toString());
      return jsonResponse.map((leavedata) => new LeaveType_Approve.fromJson(leavedata)).toList();
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }


  Future<SuccessForPost> CreateLeavePost(LeaveRequestData data) async {

    print(data.Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"LeaveSubmit?Uid="+data.Uid.toString()
                                        +"&LeaveType="+data.LeaveType.toString()
                                        +"&FromDate="+data.FromDate.toString()
                                        +"&ToDate="+data.ToDate.toString()
                                        +"&LeaveReason="+data.LeaveReason.toString());

    if (response.statusCode == 200) {

      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);
      debugPrint("From singleGet Class:: "+json.decode(response.body).toString());
      return SuccessForPost.fromJson(json.decode(response.body));
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }

  Future<SuccessForPost> LeaveApprovalPost(LeaveApprovalData data) async {




    print(data.Uid.toString());
    //then it will get data
    print("fetch from apiprovider");
    final response = await client.get("${GlobalConfiguration().getString('api_base_url2')}"+"ApproveLeave?Uid="+data.Uid.toString()
        +"&Rid="+data.Rid.toString()
        +"&Status="+data.status.toString());

    if (response.statusCode == 200) {

      //List<dynamic> values = new List<dynamic>();

      //values = json.decode(response.body);
      debugPrint("From singleGet Class:: "+json.decode(response.body).toString());
      return SuccessForPost.fromJson(json.decode(response.body));
    }
    else {
      throw Exception('Failed to load jobs from API');
    }
  }
}