import 'package:hrm_app/models/LeaveApprovalUPDATEdata_model.dart';
import 'package:hrm_app/models/LeaveRequestPOSTdata_Model.dart';
import 'package:hrm_app/models/LeaveSummery_Mode.dart';
import 'package:hrm_app/models/LeaveTypeCategory_Model.dart';
import 'package:hrm_app/models/LeaveType_Model.dart';
import 'package:hrm_app/models/success_for_post.dart';
import 'package:hrm_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class Approval_Bloc{

  final _repository = Repository();

  final _leaveapprovaldataFetcher = PublishSubject<List<LeaveType_Approve>>();

  Stream<List<LeaveType_Approve>> get allLeaveApprovalData => _leaveapprovaldataFetcher.stream;

  final _successdataFetcher = PublishSubject<SuccessForPost>();

  Stream<SuccessForPost> get getsuccessdata => _successdataFetcher.stream;

  fetchAllLeaveApprovaldata() async{
    List<LeaveType_Approve> leavetypefetch = await _repository.fetchAllLeaveApprovaldata("6");
    _leaveapprovaldataFetcher.sink.add(leavetypefetch);
  }

  LeaveApprovalPost(LeaveApprovalData data) async{

    print("Leave Type ID is : "+ data.Rid.toString());

    SuccessForPost createLeave = await _repository.LeaveApprovalPost(data);
    _successdataFetcher.sink.add(createLeave);
  }


  void dispose() async{

    await _leaveapprovaldataFetcher.drain();
    _leaveapprovaldataFetcher.close();

    await _successdataFetcher.drain();
    _successdataFetcher.close();

  }
}

final approvalbloc = Approval_Bloc();
