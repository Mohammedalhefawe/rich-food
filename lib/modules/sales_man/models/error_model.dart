class ErrorModel {
  final bool success;
  final String message;
  final String data;
  final int status;

  ErrorModel({
    required this.success,
    required this.message,
    required this.data,
    required this.status,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    final errorData = (json['data'] is List) ? '' : json['data'];
    return ErrorModel(
      success: json['success'],
      message: json['message'],
      data: errorData ?? '',
      status: json['status'],
    );
  }
}
