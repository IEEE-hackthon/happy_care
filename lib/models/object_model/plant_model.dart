import 'object_model.dart';

class Plant extends Organism {
  final String growthHabit;
  final String wateringNeeds;
  final String lightNeeds;
  final String soilType;

  Plant({
    required super.imageUrl,
    required super.name,
    required super.species,
    required super.description,
    required this.growthHabit,
    required this.wateringNeeds,
    required this.lightNeeds,
    required this.soilType,
  });
}
