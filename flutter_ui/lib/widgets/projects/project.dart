class Project {
  String image;
  String description;
  String title;
  String sponsor;
  String tags;
  String details;
  String innerTitle;

  Project({
    this.image,
    this.description,
    this.title,
    this.sponsor,
    this.tags,
    this.details,
    this.innerTitle,
  });

  noUseFunction(String d) {
    this.tags = d;
  }

}