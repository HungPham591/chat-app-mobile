class Regex {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool isName(String name) {
    RegExp regExp = RegExp(r'^[a-z A-Z]+$');
    return regExp.hasMatch(name);
  }
}
