import 'object_model.dart';

class Animal extends Organism {
  final String diet;
  final String habitat;
  final String walkingNeeds;
  final String socialNeeds;

  Animal({
    required super.imageUrl,
    required super.name,
    required super.species,
    required super.description,
    required this.diet,
    required this.habitat,
    required this.walkingNeeds,
    required this.socialNeeds,
  });
}
