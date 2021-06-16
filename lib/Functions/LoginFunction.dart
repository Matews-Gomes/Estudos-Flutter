class LoginFunction {
  String validarEmail(String value) {
    String p =
        r'([a-z0-9] [- A-z0-9_ +.] [a-z0-9]) @ ([a-z0-9] [-. a-z0-9][um-z0 -9](com | net) |. (. [0-9] {1,3} {3} [0-9] {1,3}))';

    RegExp regExp = new RegExp(p);

    if (value.isEmpty) {
      return "Digite um email!";
    } else if (regExp.hasMatch(value)) {
      return value;
    } else {
      return "Informe um email válido!";
    }
  }

  String validarPass(String value) {
    if (value.isEmpty) {
      return "Imforme uma senha!";
    } else {
      return value;
    }
  }
}
