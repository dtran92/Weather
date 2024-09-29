class Util {
  static String formatTime(String? time) {
    if (time == null) {
      return "";
    }
    final hour = int.tryParse(time.substring(0, 2));
    if (hour == null) {
      return "";
    } else {
      if (hour <= 11) {
        return "$hour AM";
      } else {
        return "${hour%12} PM";
      }
    }
  }
}
