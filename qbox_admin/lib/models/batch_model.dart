class BatchModel {
  String? batchName;
  List? teachers;

  BatchModel({this.batchName, this.teachers});

  BatchModel.fromJson(Map<String, dynamic> json) {
    batchName = json['batchName'];
    if (json['teachers'] != null) {
      teachers = json['teachers'].cast();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['batchName'] = batchName;
    data['teachers'] = teachers;
    return data;
  }
}
