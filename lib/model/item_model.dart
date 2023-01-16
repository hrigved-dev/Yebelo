class ItemModel {
  final String name;
  final int id;
  final int cost;
  final int availability;
  final String details;
  final String category;
  final String img;

  ItemModel({required this.name, required this.id, required this.cost, required this.details, required this.availability, required this.category, required this.img});

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      name: json['p_name'],
      id: json['p_id'],
      cost: json['p_cost'],
      availability: json['p_availability'],
      details: json['p_details'],
      category: json['p_category'],
      img: json['p_image']
    );
  }
}