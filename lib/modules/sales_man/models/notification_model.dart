class NotificationModel {
  final String? title;
  final String? content;
  final String? date;
  final String? image;
  final String? location;
  final bool? isRead;

  NotificationModel({
    required this.title,
    required this.content,
    required this.date,
    required this.image,
    required this.location,
    required this.isRead,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        title: json["title"] ?? "",
        content: json["content"] ?? "",
        date: json["date"] ?? "",
        image: json["image"] ?? "",
        location: json["location"] ?? "",
        isRead: json["is_read"] ?? false,
      );
}
