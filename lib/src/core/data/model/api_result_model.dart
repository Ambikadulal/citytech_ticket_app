class TotalTicketDataModel {
  String? code;
  String? message;
  Data? data;

  TotalTicketDataModel({this.code, this.message, this.data});

  TotalTicketDataModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Dist? dist;

  Data({this.dist});

  Data.fromJson(Map<String, dynamic> json) {
    dist = json['dist'] != null ? Dist.fromJson(json['dist']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dist != null) {
      data['dist'] = dist!.toJson();
    }
    return data;
  }
}

class Dist {
  List<Day>? day;
  List<Week>? week;
  List<Month>? month;
  List<Year>? year;

  Dist({this.day, this.week, this.month, this.year});

  Dist.fromJson(Map<String, dynamic> json) {
    if (json['day'] != null) {
      day = <Day>[];
      json['day'].forEach((v) {
        day!.add(Day.fromJson(v));
      });
    }
    if (json['week'] != null) {
      week = <Week>[];
      json['week'].forEach((v) {
        week!.add(Week.fromJson(v));
      });
    }
    if (json['month'] != null) {
      month = <Month>[];
      json['month'].forEach((v) {
        month!.add(Month.fromJson(v));
      });
    }
    if (json['year'] != null) {
      year = <Year>[];
      json['year'].forEach((v) {
        year!.add(Year.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (day != null) {
      data['day'] = day!.map((v) => v.toJson()).toList();
    }
    if (week != null) {
      data['week'] = week!.map((v) => v.toJson()).toList();
    }
    if (month != null) {
      data['month'] = month!.map((v) => v.toJson()).toList();
    }
    if (year != null) {
      data['year'] = year!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Day {
  String? label;
  String? value;

  Day({this.label, this.value});

  Day.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    return data;
  }
}

class Week {
  String? label;
  String? value;

  Week({this.label, this.value});

  Week.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    return data;
  }
}

class Month {
  String? label;
  String? value;

  Month({this.label, this.value});

  Month.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    return data;
  }
}

class Year {
  String? label;
  String? value;

  Year({this.label, this.value});

  Year.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = label;
    data['value'] = value;
    return data;
  }
}
