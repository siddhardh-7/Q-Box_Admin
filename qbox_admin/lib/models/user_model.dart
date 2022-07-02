class UserModel {
  String? firstName;
  String? lastName;
  int? age;
  String? email;
  String? profileImageName;
  String? role;

  UserModel(
      {this.firstName,
      this.lastName,
      this.age,
      this.email,
      this.profileImageName,
      this.role});

  // UserModel fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //       firstName: json['firstName'],
  //       lastName: json['lastName'],
  //       age: json['age'],
  //       email: json['email'],
  //       profileImageUrl: json['profileImageUrl']);
  // }

  UserModel.fromJson(Map<String, Object?> json)
      : this(
            firstName: json['firstName']! as String,
            lastName: json['lastName']! as String,
            email: json['email']! as String,
            profileImageName: json['profileImageName'] as String,
            age: json['age']! as int,
            role: json['role'] as String);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['age'] = age;
    data['email'] = email;
    data['profileImageName'] = profileImageName;
    data['role'] = role;
    return data;
  }
}
