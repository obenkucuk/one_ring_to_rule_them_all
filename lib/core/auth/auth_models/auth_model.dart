// import 'dart:convert';

// AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));
// String authModelToJson(AuthModel data) => json.encode(data.toJson());

// class AuthModel {
//   AuthModel({
//     this.kind,
//     this.localId,
//     this.email,
//     this.displayName,
//     this.idToken,
//     this.registered,
//     this.refreshToken,
//     this.expiresIn,
//   });

//   final String? kind;
//   final String? localId;
//   final String? email;
//   final String? displayName;
//   final String? idToken;
//   final bool? registered;
//   final String? refreshToken;
//   final String? expiresIn;

//   factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
//         kind: json["kind"],
//         localId: json["localId"],
//         email: json["email"],
//         displayName: json["displayName"],
//         idToken: json["idToken"],
//         registered: json["registered"],
//         refreshToken: json["refreshToken"],
//         expiresIn: json["expiresIn"],
//       );

//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "localId": localId,
//         "email": email,
//         "displayName": displayName,
//         "idToken": idToken,
//         "registered": registered,
//         "refreshToken": refreshToken,
//         "expiresIn": expiresIn,
//       };
// }
