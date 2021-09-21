import 'package:project_match/widgets/projects/project.dart';

class ProjectDatabase {

  //Manually defined projects for the present

  static var projectMatchCard = new Project(
    image: "assets/project_images/project_match_project.jpg",
    description:
    "UVU students are working to create an app that"
        + " will connect students with projects that suit"
        + " their interest and skill level. The intent is"
        + " to provide a way to connect like-minded students"
        + " with professors and industry partners who have"
        + " similar interests.",
    details: "Paid: No\n\nHours: 10-15",
    title: "UVU Project Match",
    sponsor: "Utah Valley University",
    tags: "Computer Science\nData Management\nProduct Development",
    innerTitle: "PD_PROJECT_MATCH",
  );

  static var solarCard = new Project(
    image: "assets/project_images/solar_project.jpg",
    description:
    "Students are working with an industry partner, "
        + "RS Energy, to try and develop solar options "
        + "for the university. Working with students, "
        + "faculty, and industry they are working on a "
        + "comprehensive policy and procedure for student "
        + "engagement.",
    details: "Paid: No\n\nHours: N/A",
    title: "UVSolar",
    sponsor: "RS Energy",
    tags: "Engineering\nSustainability\nConstruction",
    innerTitle: "PD_RS_ENERGY",
  );

  static var ruralUtahCard = new Project(
    image: "assets/project_images/rural_utah_project.jpg",
    description:
    "Students in this project are working to research various "
        + "aspects of rural Utah in order to provide information "
        + "on effective processes moving forward in rural economic "
        + "development. Focusing specifically on broadband roll-out,"
        + " students will gain an understanding of necessary steps "
        + "for rural development, and present their research to "
        + "policy-makers and corporations for action.",
    details: "Paid: No\n\nHours: 10-15",
    title: "Rural Utah Initiative",
    sponsor: "UVU, Microsoft",
    tags: "Computer Science\nData Management\nPolicy and Politics",
    innerTitle: "PD_RURAL_UTAH",
  );

  static var certificateCard = new Project(
    image: "assets/project_images/certificate_project.jpg",
    description:
    "In order to promote Wolverine spirit and encourage "
        + "student attendance at events, The Den Taskforce "
        + "team is doing research on what students would love"
        + " to see in their sports program – and what it will "
        + "take to implement that. ",
    details: "Paid: No\n\nHours: 10-15",
    title: "Innovation Certificate",
    sponsor: "UVU Innovation Program",
    tags: "Education\nPolicy+Politics\nData Analysis",
    innerTitle: "PD_CERTIFICATE",
  );

  static var theDenCard = new Project(
    image: "assets/project_images/den_project.jpg",
    description:
    "Students in this project are working together "
        + "to develop an academic certificate in "
        + "innovation – so that students can represent "
        + "their capacity for innovation on their diploma."
        + " Working alongside faculty, students are working"
        + " to research for and approve a dynamic certificate"
        + " for students in every capacity. ",
    details: "Paid: No\n\nHours: 10-15",
    title: "The Den Project",
    sponsor: "Utah Valley University",
    tags: "Athletics\nData Management\nPublic Relations",
    innerTitle: "PD_THE_DEN",
  );

  static var uvccCard = new Project(
    image: "assets/project_images/uvcc_project.jpg",
    description:
    "Students are working alongside the new president of the "
        +"Utah Valley Chamber of Commerce, Curtis Blair, to "
        +"administer a COVID-19 survey, create marketing materials,"
        +" and consult on the vision and future direction of the "
        +"Chamber. ",
    details: "Paid: No\n\nHours: 10-15",
    title: "UVCC Partnership",
    sponsor: "Utah Valley University",
    tags: "Policy+Politics\nData Analytics\nEconomics",
    innerTitle: "PD_UVCC",
  );

  static List<Project> getList() {
    return [
      projectMatchCard,
      certificateCard,
      uvccCard,
      theDenCard,
      solarCard,
      ruralUtahCard
    ];
  }
}

