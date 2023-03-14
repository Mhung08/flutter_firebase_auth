import 'dart:io';

import 'package:flutter/foundation.dart';

class UserLogin {
  String email;

  String firstName;

  String lastName;

  String userID;

  String profilePictureURL;

  String appIdentifier;

  UserLogin(
      {this.email = '',
      this.firstName = '',
      this.lastName = '',
      this.userID = '',
      this.profilePictureURL = ''})
      : appIdentifier =
            'Flutter Login Screen ${kIsWeb ? 'Web' : Platform.operatingSystem}';

  String fullName() => '$firstName $lastName';

  factory UserLogin.fromJson(Map<String, dynamic> parsedJson) {
    return UserLogin(
        email: parsedJson['email'] ?? '',
        firstName: parsedJson['firstName'] ?? '',
        lastName: parsedJson['lastName'] ?? '',
        userID: parsedJson['id'] ?? parsedJson['userID'] ?? '',
        profilePictureURL: parsedJson['profilePictureURL'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'id': userID,
      'profilePictureURL': profilePictureURL,
      'appIdentifier': appIdentifier
    };
  }
}
