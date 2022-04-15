import 'package:codemagic_demo_app/models/base.model.dart';

class Author extends BaseModel {
  String? link;
  String? bio;
  String? description;
  String? sId;
  String? name;
  int? quoteCount;
  String? slug;
  DateTime? dateAdded;
  DateTime? dateModified;

  Author({
    this.link,
    this.bio,
    this.description,
    this.sId,
    this.name,
    this.quoteCount,
    this.slug,
    this.dateAdded,
    this.dateModified,
  });

  Author.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    bio = json['bio'];
    description = json['description'];
    sId = json['_id'];
    name = json['name'];
    quoteCount = json['quoteCount'];
    slug = json['slug'];
    dateAdded = DateTime.parse(json['dateAdded']);
    dateModified = DateTime.parse(json['dateModified']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['link'] = link;
    data['bio'] = bio;
    data['description'] = description;
    data['_id'] = sId;
    data['name'] = name;
    data['quoteCount'] = quoteCount;
    data['slug'] = slug;
    data['dateAdded'] = dateAdded;
    data['dateModified'] = dateModified;
    data['imageUrl'] = imageUrl;
    return data;
  }

  String get imageUrl => 'https://images.quotable.dev/profile/400/$slug.jpg';
}
