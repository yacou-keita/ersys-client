class CardEntity {
  late final String imageUrl, title, link, buttonTitle, description, buttonIcon;
  late bool isActive;

  CardEntity({
    required this.link,
    required this.imageUrl,
    this.isActive = true,
    this.buttonIcon = '',
    this.description = '',
    this.buttonTitle = '',
    required this.title,
  });
}
