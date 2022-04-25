import 'package:flutter/cupertino.dart';

class Gender {
  static int MALE = 1;
  static int FEMALE = 0;
}

class PostType {
  static int TEXT = 0;
  static int IMAGE = 1;
  static int AUDIO = 2;
  static int VIDEO = 3;
  static int GAME = 4;
}

class Role {
  static String USER = 'user';
  static String ADMIN = 'admin';
}

class AccountType {
  static String FACEBOOK = 'facebook';
  static String GOOGLE = 'google';
  static String ADMIN = 'admin';
}

class SocketEvent {
  static String NEW_POST = 'new_post';
  static String NEW_QUESTION = 'new_question';
  static String ON_TYPING = 'on_typing';
  static String ON_FINISH_TYPING = 'on_finish_typing';
  static String SEND_MESSAGE = 'send_message';
  static String RECEIVE_MESSAGE = 'receive_message';
  static String FRIEND_REQUEST = 'friend_request';
  static String FRIEND_REQUEST_ACCEPT = 'friend_request_accept';
}
