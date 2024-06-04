import 'package:ersys_client/app_route_name.dart';
import 'package:ersys_client/shared/core/base_url/assets.dart';
import 'package:ersys_client/shared/domain/entities/card_entity.dart';

List<CardEntity> carouselData = [
  CardEntity(
    link: AppRouteName.freeCandidate,
    imageUrl: "${AppAssets.imageBaseUrl}/IMG_1261.jpg",
    title: "Collecte des voeux d'orientations session 2024.",
    buttonTitle: "je m'inscris",
    description:
        "Formuler votre demande de transfert ou de changement de filière directement en ligne.",
  ),
  CardEntity(
    link: AppRouteName.freeCandidate,
    imageUrl: "${AppAssets.imageBaseUrl}/etudiant5.jpg",
    title:
        "Ouverture des inscriptions en ligne 2023 - 2024 (uniquement les anciens)",
    buttonTitle: "je m'inscris",
    description:
        "Procéder à votre inscription en ligne pour accéder aux établissements publics et privés de l'ETFP.",
  ),
  CardEntity(
    link: AppRouteName.freeCandidate,
    imageUrl: "${AppAssets.imageBaseUrl}/Mme Souame 17 mai 2023-10.jpg",
    title: "Ouverture des demandes post-orientation pour les élèves en 3ème",
    buttonTitle: "je m'inscris",
    isActive: false,
    description:
        "Formuler votre demande de réorientation, réaffectation ou une nouvelle demande d'orientation à l'ETFP.",
  ),
  CardEntity(
    link: AppRouteName.freeCandidate,
    imageUrl: "${AppAssets.imageBaseUrl}/IMG_1261.jpg",
    title: "Demande d'orientation en 1 ère annnée BTS sessions 2023",
    buttonTitle: "je m'inscris",
    isActive: false,
    description:
        "Formuler votre demande d'orientation dans les établissements plublic de l'ETFP.",
  ),
  CardEntity(
    link: AppRouteName.freeCandidate,
    imageUrl: "${AppAssets.imageBaseUrl}/etudiant5.jpg",
    title: "Demande d'orientation par voie de passerelle session 2023",
    buttonTitle: "je m'inscris",
    isActive: false,
    description:
        "Formuler votre demande d'orientation par voie de passerelle dans les établissements plublic et privés de l'ETFP.",
  ),
  CardEntity(
      link: AppRouteName.freeCandidate,
      imageUrl: "${AppAssets.imageBaseUrl}/MmeSouame17mai20236.jpg",
      title: "Resultats demande d'orientation session 2023",
      buttonTitle: "je consulte",
      description:
          "Vous avez effectué une demande d'orientation à l'ETFPA. Cliquer ici pour consulter votre résultat."),
];
