class LoogedInUserModel {
  String? id;
  String? name;
  String? email;
  String? profiePicture;
  String? createdAt;
  // List<dynamic>? likeProduct;

  LoogedInUserModel({
    this.id,
    this.name,
    this.email,
    this.profiePicture,
    this.createdAt,
    //   this.likeProduct,
  });

  LoogedInUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profiePicture = json['profie_picture'];
    createdAt = json['created_at'];
    // if (json['like_product'] != null) {
    //   likeProduct = <Null>[];
    //   json['like_product'].forEach((v) {
    //     likeProduct!.add(new Null.fromJson(v));
    //   });
    //}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['profie_picture'] = this.profiePicture;
    data['created_at'] = this.createdAt;
    // if (this.likeProduct != null) {
    //   data['like_product'] = this.likeProduct!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
