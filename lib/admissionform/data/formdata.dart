class FormData {
  final String name;
  final String parentName;
  final String aadharNumber;
  final String email;
final String bloodgroup;
final String dob;

  final String phoneNumber;
  final String whatsAppNUmber;
final String religion;

final String caste;

  final String parentPhoneNUmber;
/////////////////////////////////eductional documents///////////////////////

  final String registerNumber;
  final String boardofStudy; // auto complete;
  final int overAllmarks;
  final int maths;
  final int science;
  final int physics;
  final int chemistry;
  final double cutoff;

  FormData(
      {required this.cutoff,
      required this.name,
      required this.parentName,
      required this.aadharNumber,
      required this.religion,
      required this.dob,
      required this.bloodgroup,
      required this.caste,

      required this.email,
      required this.phoneNumber,
      required this.whatsAppNUmber,
      required this.parentPhoneNUmber,
      required this.registerNumber,
      required this.boardofStudy,
      required this.overAllmarks,
      required this.maths,
      required this.physics,
      required this.chemistry,
      required this.science});
}
