class ConvertJson {
  String? status;
  Question? question;

  ConvertJson({this.status, this.question});

  ConvertJson.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    question =
        json['question'] != null ? Question.fromJson(json['question']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (question != null) {
      data['question'] = question!.toJson();
    }
    return data;
  }
}

class Question {
  bool? lastitem;
  bool? liked;
  int? stars;
  int? id;
  int? level;
  Video? video;
  String? languageCode;
  String? url;
  String? shareUrl;
  int? countdown;
  Choices? choices;

  Question(
      {this.lastitem,
      this.liked,
      this.stars,
      this.id,
      this.level,
      this.video,
      this.languageCode,
      this.url,
      this.shareUrl,
      this.countdown,
      this.choices});

  Question.fromJson(Map<String, dynamic> json) {
    lastitem = json['lastitem'];
    liked = json['liked'];
    stars = json['stars'];
    id = json['id'];
    level = json['level'];
    video = json['video'] != null ? Video.fromJson(json['video']) : null;
    languageCode = json['language_code'];
    url = json['url'];
    shareUrl = json['share_url'];
    countdown = json['countdown'];
    choices =
        json['choices'] != null ? Choices.fromJson(json['choices']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lastitem'] = lastitem;
    data['liked'] = liked;
    data['stars'] = stars;
    data['id'] = id;
    data['level'] = level;
    if (video != null) {
      data['video'] = video!.toJson();
    }
    data['language_code'] = languageCode;
    data['url'] = url;
    data['share_url'] = shareUrl;
    data['countdown'] = countdown;
    if (choices != null) {
      data['choices'] = choices!.toJson();
    }
    return data;
  }
}

class Video {
  String? subtitle;
  String? distractor;
  String? file;
  Metadata? metadata;
  Sources? sources;

  Video(
      {this.subtitle, this.distractor, this.file, this.metadata, this.sources});

  Video.fromJson(Map<String, dynamic> json) {
    subtitle = json['subtitle'];
    distractor = json['distractor'];
    file = json['file'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    sources =
        json['sources'] != null ? Sources.fromJson(json['sources']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subtitle'] = subtitle;
    data['distractor'] = distractor;
    data['file'] = file;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    if (sources != null) {
      data['sources'] = sources!.toJson();
    }
    return data;
  }
}

class Metadata {
  String? name;
  String? producer;
  String? director;
  String? details;
  String? relatedContentUrl;
  String? views;

  Metadata(
      {this.name,
      this.producer,
      this.director,
      this.details,
      this.relatedContentUrl,
      this.views});

  Metadata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    producer = json['producer'];
    director = json['director'];
    details = json['details'];
    relatedContentUrl = json['related_content_url'];
    views = json['views'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['producer'] = producer;
    data['director'] = director;
    data['details'] = details;
    data['related_content_url'] = relatedContentUrl;
    data['views'] = views;
    return data;
  }
}

class Sources {
  String? mp4;

  Sources({this.mp4});

  Sources.fromJson(Map<String, dynamic> json) {
    mp4 = json['mp4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mp4'] = mp4;
    return data;
  }
}

class Choices {
  String? answer;
  String? distractor;

  Choices({this.answer, this.distractor});

  Choices.fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    distractor = json['distractor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['answer'] = answer;
    data['distractor'] = distractor;
    return data;
  }
}
