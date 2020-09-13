import 'package:hrm_app/models/LeaveApprovalUPDATEdata_model.dart';
import 'package:hrm_app/models/LeaveRequestPOSTdata_Model.dart';
import 'package:hrm_app/models/LeaveSummery_Mode.dart';
import 'package:hrm_app/models/LeaveTypeCategory_Model.dart';
import 'package:hrm_app/models/LeaveType_Model.dart';
import 'package:hrm_app/models/Notification_Model.dart';
import 'package:hrm_app/models/Userlogin_Model.dart';
import 'package:hrm_app/models/success_for_post.dart';
import 'package:hrm_app/resources/apiprovider.dart';

class Repository{

  final apiprovider = ApiProvider();



  Future<UserLogin_model> userlogin(String Uid,String Upas) => apiprovider.userlogin(Uid,Upas);

  Future<List<Notification_Model>> fetchAllNotificationdata(String Uid) => apiprovider.fetchAllNotificationdata(Uid);
  Future<List<LeaveType_Model>> fetchAllLeaveTypedata(String Uid) => apiprovider.fetchAllLeaveTypedata(Uid);
  Future<List<LeaveSummery_Model>> fetchAllLeaveSummerydata(String Uid) => apiprovider.fetchAllLeaveSummerydata(Uid);
  Future<List<LeaveType_Approve>> fetchAllLeaveApprovaldata(String Uid) => apiprovider.fetchAllLeaveApprovaldata(Uid);


  Future<SuccessForPost> CreateLeavePost(LeaveRequestData data) => apiprovider.CreateLeavePost(data);
  Future<SuccessForPost> LeaveApprovalPost(LeaveApprovalData data) => apiprovider.LeaveApprovalPost(data);


  //LeaveApprovalPost

}