// import 'dart:convert';

// AuthBadRequestModel authBadRequestModelFromJson(String str) => AuthBadRequestModel.fromJson(json.decode(str));
// String authBadRequestModelToJson(AuthBadRequestModel data) => json.encode(data.toJson());

// class AuthBadRequestModel {
//   AuthBadRequestModel({
//     this.error,
//   });

//   final SignInBadRequestModelError? error;

//   factory AuthBadRequestModel.fromJson(Map<String, dynamic> json) => AuthBadRequestModel(
//         error: SignInBadRequestModelError.fromJson(json["error"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "error": error!.toJson(),
//       };
// }

// class SignInBadRequestModelError {
//   SignInBadRequestModelError({
//     this.code,
//     this.message,
//     this.errors,
//   });

//   final int? code;
//   final String? message;
//   final List<ErrorElement>? errors;

//   factory SignInBadRequestModelError.fromJson(Map<String, dynamic> json) => SignInBadRequestModelError(
//         code: json["code"],
//         message: json["message"],
//         errors: List<ErrorElement>.from(json["errors"].map((x) => ErrorElement.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "code": code,
//         "message": message,
//         "errors": List<dynamic>.from(errors!.map((x) => x.toJson())),
//       };
// }

// class ErrorElement {
//   ErrorElement({
//     this.message,
//     this.domain,
//     this.reason,
//   });

//   final String? message;
//   final String? domain;
//   final String? reason;

//   factory ErrorElement.fromJson(Map<String, dynamic> json) => ErrorElement(
//         message: json["message"],
//         domain: json["domain"],
//         reason: json["reason"],
//       );

//   Map<String, dynamic> toJson() => {
//         "message": message,
//         "domain": domain,
//         "reason": reason,
//       };
// }
