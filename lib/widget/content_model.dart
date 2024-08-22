class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'pick your food from our menu\n     More than 35 times',
      image: "build/images/screen1.png",
      title: 'Select from our\n      Best Menu'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and\n    card payment is available',
      image: "build/images/screen2.png",
      title: 'Easy And Online Payment'),
  UnboardingContent(
      description: 'Deliver your Food at your\n   Doorsteps',
      image: "build/images/screen3.png",
      title: 'Quick Delivery at Your Doorstep')
];
