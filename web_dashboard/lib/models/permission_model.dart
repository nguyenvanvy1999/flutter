class Permission {
  String displayName;
  String name;
  String id;
  Permission({
    required this.id,
    required this.name,
    required this.displayName,
  });

  factory Permission.fromJson(Map<String, dynamic> json) {
    return Permission(
      displayName: json['displayName'],
      name: json['name'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['displayName'] = displayName;
    return data;
  }
}
