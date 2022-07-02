class UserModel {
  String? firstName;
  String? lastName;
  String? email;
  String? profilePicUrl;
  String? country;
  int? phoneNumber;
  String? role;
  List<String>? courses;
  List<String>? batches;
  List<Payments>? payments;
  List<Results>? results;

  UserModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.profilePicUrl,
      this.country,
      this.phoneNumber,
      this.role,
      this.courses,
      this.batches,
      this.payments,
      this.results});

  UserModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    profilePicUrl = json['profilePicUrl'];
    country = json['country'];
    phoneNumber = json['phoneNumber'];
    role = json['role'];
    courses = json['courses'].cast<String>();
    batches = json['batches'].cast<String>();
    if (json['payments'] != null) {
      payments = <Payments>[];
      json['payments'].forEach((v) {
        payments!.add(Payments.fromJson(v));
      });
    }
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['profilePicUrl'] = profilePicUrl;
    data['country'] = country;
    data['phoneNumber'] = phoneNumber;
    data['role'] = role;
    data['courses'] = courses;
    data['batches'] = batches;
    if (payments != null) {
      data['payments'] = payments!.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Payments {
  String? startDate;
  String? paymentType;
  String? amount;
  String? course;

  Payments({this.startDate, this.paymentType, this.amount, this.course});

  Payments.fromJson(Map<String, dynamic> json) {
    startDate = json['startDate'];
    paymentType = json['paymentType'];
    amount = json['amount'];
    course = json['course'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startDate'] = startDate;
    data['paymentType'] = paymentType;
    data['amount'] = amount;
    data['course'] = course;
    return data;
  }
}

class Results {
  String? courseName;
  String? result;

  Results({this.courseName, this.result});

  Results.fromJson(Map<String, dynamic> json) {
    courseName = json['courseName'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['courseName'] = courseName;
    data['result'] = result;
    return data;
  }
}
