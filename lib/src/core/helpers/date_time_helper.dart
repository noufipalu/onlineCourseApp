class DateTimeHelper {
  static String getFormatteddate(DateTime compareDateTime) {
    if (DateTime.now().difference(compareDateTime).inDays < 1) {
      return '${compareDateTime.hour} : ${compareDateTime.minute}';
    } else if (DateTime.now().difference(compareDateTime).inDays == 1) {
      return 'Yesterday';
    } else {
      return compareDateTime.toString().substring(0, 10);
    }
  }
}
