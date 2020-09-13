class UserLogin_model{


  bool LogStatus;
  String UserId;
  String Password;
  String Name;
  String Company;
  String Designation;
  String Date;
  String PresentStatus;
  String LateStatus;
  String Intimes;
  String MonthPresent;
  String MonthAbesnt;
  String MonthLeave;
  String MonthLate;


  UserLogin_model({this.LogStatus, this.UserId,this.Password,this.Name,this.Company,this.Designation,this.Date,
  this.PresentStatus,this.LateStatus,this.Intimes,this.MonthPresent,this.MonthAbesnt,this.MonthLeave,this.MonthLate});

  factory UserLogin_model.fromJson(Map<String, dynamic> json) {
    return UserLogin_model(
      LogStatus: json['LogStatus'],
      UserId: json['UserId']==null ? "1" : json['UserId'],
      Password: json['Password']=="null" ? "N/A": json['Password'],
      Name: json['Name'],
      Company: json["Company"],
      Designation: json['Designation'],
      Date: json["Date"],
      PresentStatus: json['PresentStatus'],
      LateStatus: json["LateStatus"],
      Intimes: json['Intimes'],
      MonthPresent: json["MonthPresent"],
      MonthAbesnt: json["MonthAbesnt"],
      MonthLeave: json['MonthLeave'],
      MonthLate: json["MonthLate"],

    );
  }

}