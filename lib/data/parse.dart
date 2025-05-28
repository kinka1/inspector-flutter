String parseToStringDatetime(DateTime input) {
  // Parse the input string and return a list of strings
  final parsedate = "${input.year}-${input.month}-${input.day} ${input.hour}:${input.minute}:${input.second}";
  return parsedate;
}

String parseToStringDate(DateTime input) {
  // Parse the input string and return a list of strings
  final parsedate = "${input.year}-${input.month}-${input.day}";
  return parsedate;
}

String toTitleCase(String input) {
  return input.toLowerCase().split(' ').map((word) {
    if (word.isEmpty) return '';
    return word[0].toUpperCase() + word.substring(1);
  }).join(' ');
}
