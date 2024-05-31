class CardModuleEntity {
  late final String imageUrl, title, link;
  late bool isActive;

  CardModuleEntity({
    required this.link,
    required this.imageUrl,
    this.isActive = true,
    required this.title,
  });
}

const String baseUrl = "assets/images/";
List<CardModuleEntity> cardModuleItem = [
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/oat.png",
      title: "Collecte des voeux d'orientations session 2024."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/changeschool.png",
      title: "Demande de transfert 2023-2024."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/free_candidate.png",
      title: "Inscription candidats libre session 2024."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/registration.png",
      title: "Inscription en ligne 2023 - 2024."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/orientation.png",
      title:
          "Réorientations, Réaffectations et nouvelles demandes d'orientation pour les élèves de troisième (Post-Orientation)."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/certificate.png",
      title: "Demande d'orientation en 1 ère annnée BTS sessions 2023."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/passerelle.png",
      title: "Demande d'orientation par voie de passerelle session 2023."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/results.png",
      title: "Résultats demande d'orientation session 2023."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/registration.png",
      title: "Recrutement exceptionel dans les lycées techniques publics."),
  CardModuleEntity(
      link: "https://oat.ersys-ci.net/",
      imageUrl: "$baseUrl/competition.png",
      title: "Concours d'entrée à l'ETFP session 2023."),
];
