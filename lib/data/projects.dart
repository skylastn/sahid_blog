class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Menkosik',
    description:
        'Developing mobile native android for rental boarding house',
    image: 'assets/images/menkosik.jpg',
    url: 'https://apkpure.com/menkosik/org.d3ifcool.menkosik',
    skills: [
      'Java',
      'Firebase',
      'SQL',
      'Github',
    ],
  ),
  Project(
    name: 'School Of Parenting',
    description: 'Developing mobile native android for School Of Parenting',
    image: 'assets/images/sop.jpeg',
    url:
        'https://play.google.com/store/apps/details?id=id.schoolofparenting',
    skills: [
      'Java',
      'Php',
      'Webservice',
      'Socket',
      'Github',
    ],
  ),

  Project(
    name: 'SkyTronik',
    description: 'Developing mobile for SkyTronik',
    image: 'assets/images/skytronik.jpeg',
    url:
    'https://skytronik.tokosahid.my.id/aplikasi/SkyTronik.apk',
    skills: [
      'Dart',
      'Flutter',
      'Webservice',
      'Code Igniter',
      'Github',
    ],
  ),

  Project(
    name: 'Monitoring TK',
    description: 'Website for Monitoring Tiara Nusa Klaten Kindergarten',
    image: 'assets/images/monitoring.png',
    url:
    'https://tkj.tokosahid.my.id',
    skills: [
      'Dart',
      'Flutter',
      'Webservice',
      'Code Igniter',
      'Github',
    ],
  ),
  Project(
    name: 'Macanan Homepage',
    description: 'Mobile Company Profile Macanan',
    image: 'assets/images/macanan.jpg',
    url:
    'https://play.google.com/store/apps/details?id=net.macanan',
    skills: [
      'Dart',
      'Flutter',
      'Webservice',
      'Augment Reality',
      'Flutter_Unity',
      'Github',
    ],
  ),

  Project(
    name: 'Macanan AR',
    description: 'Augment Reality Video for PT Macananjaya Cemerlang',
    image: 'assets/images/macanan_ar.png',
    url:
    'https://play.google.com/store/apps/details?id=com.mjc.MJCAR',
    skills: [
      'Unity3D',
      'Video'
    ],
  ),
];
