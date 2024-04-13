class CourseDetails {
  String? status;
  Data? data;

  CourseDetails({this.status, this.data});

  CourseDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? subTitle;
  String? categoryId;
  String? subCategoryId;
  String? instructorId;
  List<String>? learningTopic;
  String? requirements;
  String? description;
  double? price;
  bool? status;
  String? isFeatured;
  String? greetings;
  String? congratulationMessage;
  String? thumb;
  String? createdAt;
  String? updatedAt;
  List<Sections>? sections;
  List<MoreCourse>? moreCourse;
  Null courseIntroVideo;
  String? videoSourceType;
  String? videoLinkPath;
  Intro? intro;

  Data(
      {this.id,
        this.title,
        this.subTitle,
        this.categoryId,
        this.subCategoryId,
        this.instructorId,
        this.learningTopic,
        this.requirements,
        this.description,
        this.price,
        this.status,
        this.isFeatured,
        this.greetings,
        this.congratulationMessage,
        this.thumb,
        this.createdAt,
        this.updatedAt,
        this.sections,
        this.moreCourse,
        this.courseIntroVideo,
        this.videoSourceType,
        this.videoLinkPath,
        this.intro});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['sub_title'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    instructorId = json['instructor_id'];
    learningTopic = json['learning_topic'].cast<String>();
    requirements = json['requirements'];
    description = json['description'];
    price = json['price'];
    status = json['status'];
    isFeatured = json['is_featured'];
    greetings = json['greetings'];
    congratulationMessage = json['congratulation_message'];
    thumb = json['thumb'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
    if (json['more_course'] != null) {
      moreCourse = <MoreCourse>[];
      json['more_course'].forEach((v) {
        moreCourse!.add(MoreCourse.fromJson(v));
      });
    }
    courseIntroVideo = json['course_intro_video'];
    videoSourceType = json['video_source_type'];
    videoLinkPath = json['video_link_path'];
    intro = json['intro'] != null ? Intro.fromJson(json['intro']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['sub_title'] = subTitle;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['instructor_id'] = instructorId;
    data['learning_topic'] = learningTopic;
    data['requirements'] = requirements;
    data['description'] = description;
    data['price'] = price;
    data['status'] = status;
    data['is_featured'] = isFeatured;
    data['greetings'] = greetings;
    data['congratulation_message'] = congratulationMessage;
    data['thumb'] = thumb;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (sections != null) {
      data['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    if (moreCourse != null) {
      data['more_course'] = moreCourse!.map((v) => v.toJson()).toList();
    }
    data['course_intro_video'] = courseIntroVideo;
    data['video_source_type'] = videoSourceType;
    data['video_link_path'] = videoLinkPath;
    if (intro != null) {
      data['intro'] = intro!.toJson();
    }
    return data;
  }
}

class Sections {
  int? id;
  String? topic;
  String? description;
  String? courseId;
  String? createdAt;
  String? updatedAt;
  List<Lessons>? lessons;

  Sections(
      {this.id,
        this.topic,
        this.description,
        this.courseId,
        this.createdAt,
        this.updatedAt,
        this.lessons});

  Sections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    topic = json['topic'];
    description = json['description'];
    courseId = json['course_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['lessons'] != null) {
      lessons = <Lessons>[];
      json['lessons'].forEach((v) {
        lessons!.add(Lessons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['topic'] = topic;
    data['description'] = description;
    data['course_id'] = courseId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (lessons != null) {
      data['lessons'] = lessons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Lessons {
  String? id;
  String? courseId;
  String? sectionId;
  String? lectureTitle;
  String? videoResource;
  String? videoLinkPath;
  String? videoSourceType;

  Lessons(
      {this.id,
        this.courseId,
        this.sectionId,
        this.lectureTitle,
        this.videoResource,
        this.videoLinkPath,
        this.videoSourceType});

  Lessons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseId = json['course_id'];
    sectionId = json['section_id'];
    lectureTitle = json['lecture_title'];
    videoResource = json['video_resource'];
    videoLinkPath = json['video_link_path'];
    videoSourceType = json['video_source_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['course_id'] = courseId;
    data['section_id'] = sectionId;
    data['lecture_title'] = lectureTitle;
    data['video_resource'] = videoResource;
    data['video_link_path'] = videoLinkPath;
    data['video_source_type'] = videoSourceType;
    return data;
  }
}

class MoreCourse {
  int? id;
  String? thumb;
  String? title;
  String? subTitle;
  List<String>? learningTopic;
  String? requirements;
  String? description;
  int? completedLessons;
  String? completedPercentage;
  int? isFree;
  Null? totalRating;
  double? price;
  int? isDiscounted;
  Null? discountType;
  Null? discountedPrice;

  MoreCourse(
      {this.id,
        this.thumb,
        this.title,
        this.subTitle,
        this.learningTopic,
        this.requirements,
        this.description,
        this.completedLessons,
        this.completedPercentage,
        this.isFree,
        this.totalRating,
        this.price,
        this.isDiscounted,
        this.discountType,
        this.discountedPrice});

  MoreCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thumb = json['thumb'];
    title = json['title'];
    subTitle = json['sub_title'];
    learningTopic = json['learning_topic'].cast<String>();
    requirements = json['requirements'];
    description = json['description'];
    completedLessons = json['completedLessons'];
    completedPercentage = json['completedPercentage'];
    isFree = json['isFree'];
    totalRating = json['totalRating'];
    price = json['price'];
    isDiscounted = json['isDiscounted'];
    discountType = json['discountType'];
    discountedPrice = json['discountedPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['thumb'] = thumb;
    data['title'] = title;
    data['sub_title'] = subTitle;
    data['learning_topic'] = learningTopic;
    data['requirements'] = requirements;
    data['description'] = description;
    data['completedLessons'] = completedLessons;
    data['completedPercentage'] = completedPercentage;
    data['isFree'] = isFree;
    data['totalRating'] = totalRating;
    data['price'] = price;
    data['isDiscounted'] = isDiscounted;
    data['discountType'] = discountType;
    data['discountedPrice'] = discountedPrice;
    return data;
  }
}

class Intro {
  int? id;
  String? courseId;
  Null? assignmentId;
  Null? lessonId;
  Null? quizId;
  Null? fileName;
  String? resourseType;
  String? videoSourceType;
  Null? path;
  String? videoLinkPath;
  Null? mimeType;
  String? createdAt;
  String? updatedAt;
  bool? isVideo;

  Intro(
      {this.id,
        this.courseId,
        this.assignmentId,
        this.lessonId,
        this.quizId,
        this.fileName,
        this.resourseType,
        this.videoSourceType,
        this.path,
        this.videoLinkPath,
        this.mimeType,
        this.createdAt,
        this.updatedAt,
        this.isVideo});

  Intro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseId = json['course_id'];
    assignmentId = json['assignment_id'];
    lessonId = json['lesson_id'];
    quizId = json['quiz_id'];
    fileName = json['file_name'];
    resourseType = json['resourse_type'];
    videoSourceType = json['video_source_type'];
    path = json['path'];
    videoLinkPath = json['video_link_path'];
    mimeType = json['mime_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isVideo = json['is_video'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['course_id'] = courseId;
    data['assignment_id'] = assignmentId;
    data['lesson_id'] = lessonId;
    data['quiz_id'] = quizId;
    data['file_name'] = fileName;
    data['resourse_type'] = resourseType;
    data['video_source_type'] = videoSourceType;
    data['path'] = path;
    data['video_link_path'] = videoLinkPath;
    data['mime_type'] = mimeType;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['is_video'] = isVideo;
    return data;
  }
}
