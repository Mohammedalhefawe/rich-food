extension TimeFormatter on DateTime {
  String toFormattedString() {
    final hours = hour.toString().padLeft(2, '0');
    final minutes = minute.toString().padLeft(2, '0');
    final seconds = second.toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }
}
