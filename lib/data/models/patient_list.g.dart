// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientList _$PatientListFromJson(Map<String, dynamic> json) => PatientList(
  status: json['status'] as bool,
  message: json['message'] as String,
  patient: (json['patient'] as List<dynamic>)
      .map((e) => Patient.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PatientListToJson(PatientList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'patient': instance.patient,
    };

Patient _$PatientFromJson(Map<String, dynamic> json) => Patient(
  id: (json['id'] as num).toInt(),
  patientdetailsSet: (json['patientdetails_set'] as List<dynamic>)
      .map((e) => PatientdetailsSet.fromJson(e as Map<String, dynamic>))
      .toList(),
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
  user: json['user'] as String,
  payment: json['payment'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  price: json['price'],
  totalAmount: (json['total_amount'] as num).toInt(),
  discountAmount: (json['discount_amount'] as num).toInt(),
  advanceAmount: (json['advance_amount'] as num).toInt(),
  balanceAmount: (json['balance_amount'] as num).toInt(),
  dateNdTime: json['date_nd_time'] == null
      ? null
      : DateTime.parse(json['date_nd_time'] as String),
  isActive: json['is_active'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
  'id': instance.id,
  'patientdetails_set': instance.patientdetailsSet,
  'branch': instance.branch,
  'user': instance.user,
  'payment': instance.payment,
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'price': instance.price,
  'total_amount': instance.totalAmount,
  'discount_amount': instance.discountAmount,
  'advance_amount': instance.advanceAmount,
  'balance_amount': instance.balanceAmount,
  'date_nd_time': instance.dateNdTime?.toIso8601String(),
  'is_active': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
  id: (json['id'] as num).toInt(),
  name: $enumDecode(_$NameEnumMap, json['name']),
  patientsCount: (json['patients_count'] as num).toInt(),
  location: $enumDecode(_$LocationEnumMap, json['location']),
  phone: $enumDecode(_$PhoneEnumMap, json['phone']),
  mail: $enumDecode(_$MailEnumMap, json['mail']),
  address: $enumDecode(_$AddressEnumMap, json['address']),
  gst: json['gst'] as String,
  isActive: json['is_active'] as bool,
);

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
  'id': instance.id,
  'name': _$NameEnumMap[instance.name]!,
  'patients_count': instance.patientsCount,
  'location': _$LocationEnumMap[instance.location]!,
  'phone': _$PhoneEnumMap[instance.phone]!,
  'mail': _$MailEnumMap[instance.mail]!,
  'address': _$AddressEnumMap[instance.address]!,
  'gst': instance.gst,
  'is_active': instance.isActive,
};

const _$NameEnumMap = {
  Name.EDAPPALI: 'Edappali',
  Name.KUMARAKOM: 'KUMARAKOM',
  Name.NADAKKAVU: 'Nadakkavu',
  Name.THONDAYADU: 'Thondayadu',
};

const _$LocationEnumMap = {
  Location.KOCHI_KERALA: 'Kochi,kerala',
  Location.KOZHIKODE: 'Kozhikode',
  Location.KUMARAKOM: 'Kumarakom',
};

const _$PhoneEnumMap = {
  Phone.THE_9846123456: '9846123456',
  Phone.THE_9946331452: '9946331452, ',
  Phone.THE_99463314529747331452: '9946331452,9747331452',
};

const _$MailEnumMap = {
  Mail.USER123_GMAIL_COM: 'user123@gmail.com',
  Mail.USER123_GMAIL_COMM: 'user123@gmail.comm',
};

const _$AddressEnumMap = {
  Address.KOCHI_KERALA_685565: 'Kochi, Kerala-685565',
  Address.KOTTAYAM_KERALA_6865636: 'Kottayam, Kerala-6865636',
  Address.KOZHIKODE: 'Kozhikode',
};

PatientdetailsSet _$PatientdetailsSetFromJson(Map<String, dynamic> json) =>
    PatientdetailsSet(
      id: (json['id'] as num).toInt(),
      male: json['male'] as String,
      female: json['female'] as String,
      patient: (json['patient'] as num).toInt(),
      treatment: (json['treatment'] as num?)?.toInt(),
      treatmentName: json['treatment_name'] as String?,
    );

Map<String, dynamic> _$PatientdetailsSetToJson(PatientdetailsSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'male': instance.male,
      'female': instance.female,
      'patient': instance.patient,
      'treatment': instance.treatment,
      'treatment_name': instance.treatmentName,
    };
