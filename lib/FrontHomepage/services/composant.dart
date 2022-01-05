class Component {
  int id;
  String family;
  String name;
  String quantity;
  String date;

  componentMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['family'] = family;
    mapping['name'] = name;
    mapping['quantity'] = quantity;
    mapping['date'] = date;
    return mapping;
  }
}
