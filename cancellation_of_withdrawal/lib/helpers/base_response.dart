class BaseResponse {
  bool status;
  String message;
  dynamic data;
  String errorCode;

  BaseResponse({this.status = false, this.message, this.data});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
    errorCode=json['error_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data;
    data['error_code']=this.errorCode;
    return data;
  }
}
