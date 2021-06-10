class TextUtils {

  TextUtils._internal();

  static bool isEmpty(String text) {
    return text == null || text.length == 0;
  }
}