// To parse this JSON data, do
//
//     final patientList = patientListFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'patient_list.g.dart';

PatientList patientListFromJson(String str) => PatientList.fromJson(json.decode(str));

String patientListToJson(PatientList data) => json.encode(data.toJson());

@JsonSerializable()
class PatientList {
    @JsonKey(name: "status")
    bool status;
    @JsonKey(name: "message")
    String message;
    @JsonKey(name: "patient")
    List<Patient> patient;

    PatientList({
        required this.status,
        required this.message,
        required this.patient,
    });

    factory PatientList.fromJson(Map<String, dynamic> json) => _$PatientListFromJson(json);

    Map<String, dynamic> toJson() => _$PatientListToJson(this);
}

@JsonSerializable()
class Patient {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "patientdetails_set")
    List<PatientdetailsSet> patientdetailsSet;
    @JsonKey(name: "branch")
    Branch? branch;
    @JsonKey(name: "user")
    String user;
    @JsonKey(name: "payment")
    String payment;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "phone")
    String phone;
    @JsonKey(name: "address")
    String address;
    @JsonKey(name: "price")
    dynamic price;
    @JsonKey(name: "total_amount")
    int totalAmount;
    @JsonKey(name: "discount_amount")
    int discountAmount;
    @JsonKey(name: "advance_amount")
    int advanceAmount;
    @JsonKey(name: "balance_amount")
    int balanceAmount;
    @JsonKey(name: "date_nd_time")
    DateTime? dateNdTime;
    @JsonKey(name: "is_active")
    bool isActive;
    @JsonKey(name: "created_at")
    DateTime createdAt;
    @JsonKey(name: "updated_at")
    DateTime updatedAt;

    Patient({
        required this.id,
        required this.patientdetailsSet,
        required this.branch,
        required this.user,
        required this.payment,
        required this.name,
        required this.phone,
        required this.address,
        required this.price,
        required this.totalAmount,
        required this.discountAmount,
        required this.advanceAmount,
        required this.balanceAmount,
        required this.dateNdTime,
        required this.isActive,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

    Map<String, dynamic> toJson() => _$PatientToJson(this);
}

@JsonSerializable()
class Branch {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "name")
    Name name;
    @JsonKey(name: "patients_count")
    int patientsCount;
    @JsonKey(name: "location")
    Location location;
    @JsonKey(name: "phone")
    Phone phone;
    @JsonKey(name: "mail")
    Mail mail;
    @JsonKey(name: "address")
    Address address;
    @JsonKey(name: "gst")
    String gst;
    @JsonKey(name: "is_active")
    bool isActive;

    Branch({
        required this.id,
        required this.name,
        required this.patientsCount,
        required this.location,
        required this.phone,
        required this.mail,
        required this.address,
        required this.gst,
        required this.isActive,
    });

    factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

    Map<String, dynamic> toJson() => _$BranchToJson(this);
}

enum Address {
    @JsonValue("Kochi, Kerala-685565")
    KOCHI_KERALA_685565,
    @JsonValue("Kottayam, Kerala-6865636")
    KOTTAYAM_KERALA_6865636,
    @JsonValue("Kozhikode")
    KOZHIKODE
}

final addressValues = EnumValues({
    "Kochi, Kerala-685565": Address.KOCHI_KERALA_685565,
    "Kottayam, Kerala-6865636": Address.KOTTAYAM_KERALA_6865636,
    "Kozhikode": Address.KOZHIKODE
});

enum Location {
    @JsonValue("Kochi,kerala")
    KOCHI_KERALA,
    @JsonValue("Kozhikode")
    KOZHIKODE,
    @JsonValue("Kumarakom")
    KUMARAKOM
}

final locationValues = EnumValues({
    "Kochi,kerala": Location.KOCHI_KERALA,
    "Kozhikode": Location.KOZHIKODE,
    "Kumarakom": Location.KUMARAKOM
});

enum Mail {
    @JsonValue("user123@gmail.com")
    USER123_GMAIL_COM,
    @JsonValue("user123@gmail.comm")
    USER123_GMAIL_COMM
}

final mailValues = EnumValues({
    "user123@gmail.com": Mail.USER123_GMAIL_COM,
    "user123@gmail.comm": Mail.USER123_GMAIL_COMM
});

enum Name {
    @JsonValue("Edappali")
    EDAPPALI,
    @JsonValue("KUMARAKOM")
    KUMARAKOM,
    @JsonValue("Nadakkavu")
    NADAKKAVU,
    @JsonValue("Thondayadu")
    THONDAYADU
}

final nameValues = EnumValues({
    "Edappali": Name.EDAPPALI,
    "KUMARAKOM": Name.KUMARAKOM,
    "Nadakkavu": Name.NADAKKAVU,
    "Thondayadu": Name.THONDAYADU
});

enum Phone {
    @JsonValue("9846123456")
    THE_9846123456,
    @JsonValue("9946331452, ")
    THE_9946331452,
    @JsonValue("9946331452,9747331452")
    THE_99463314529747331452
}

final phoneValues = EnumValues({
    "9846123456": Phone.THE_9846123456,
    "9946331452, ": Phone.THE_9946331452,
    "9946331452,9747331452": Phone.THE_99463314529747331452
});

@JsonSerializable()
class PatientdetailsSet {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "male")
    String male;
    @JsonKey(name: "female")
    String female;
    @JsonKey(name: "patient")
    int patient;
    @JsonKey(name: "treatment")
    int? treatment;
    @JsonKey(name: "treatment_name")
    String? treatmentName;

    PatientdetailsSet({
        required this.id,
        required this.male,
        required this.female,
        required this.patient,
        required this.treatment,
        this.treatmentName,
    });

    factory PatientdetailsSet.fromJson(Map<String, dynamic> json) => _$PatientdetailsSetFromJson(json);

    Map<String, dynamic> toJson() => _$PatientdetailsSetToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
