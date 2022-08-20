class Slide{
  final String imageUrl;
  final String description;

  Slide({required this.imageUrl, required this.description});
}

final slideList = [
  Slide(
      imageUrl : 'images/camera.png',
      description: 'Capture food for social interaction among others like you. with Meali.',
  ),
  Slide(
      imageUrl : 'images/chef.png',
      description: ' Share your food moments with a community of fellow food lovers. ',
  ),
  Slide(
      imageUrl : 'images/groceries.png',
      description: 'Cooking is not boring but fun and comes with monetary rewards too. ',
  ),
];