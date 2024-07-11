import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed 
class Pokemon with _$Pokemon{
  factory Pokemon({
    List<Ability>? abilities,
    int? baseExperience,
    Cries? cries,
    List<Species>? forms,
    List<GameIndex>? gameIndices,
    int? height,
    List<HeldItem>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Move>? moves,
    String? name,
    int? order,
    List<dynamic>? pastAbilities,
    List<dynamic>? pastTypes,
    Species? species,
    Sprites? sprites,
    List<Stat>? stats,
    List<Type>? types,
    int? weight
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);    
}

@freezed
class Ability with _$Ability {
  factory Ability({
    Species? ability,
    bool? isHidden,
    int? slot,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);

}

@freezed
class Species with _$Species {
  factory Species({
    String? name,
    String? url,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);
}


@freezed
class Cries with _$Cries{

  factory Cries({
    String? latest,
    String? legacy,
  }) = _Cries;

  factory Cries.fromJson(Map<String, dynamic> json) => _$CriesFromJson(json);

}

// freezed version of GameIndex
@freezed
class GameIndex with _$GameIndex {
  factory GameIndex({
    int? gameIndex,
    Species? version,
  }) = _GameIndex;

  factory GameIndex.fromJson(Map<String, dynamic> json) => _$GameIndexFromJson(json);
}


// freezed version of HeldItem
@freezed
class HeldItem with _$HeldItem {
  factory HeldItem({
    Species? item,
    List<VersionDetail>? versionDetails,
  }) = _HeldItem;

  factory HeldItem.fromJson(Map<String, dynamic> json) => _$HeldItemFromJson(json);
}

// freezed version of VersionDetail
@freezed
class VersionDetail with _$VersionDetail {
  factory VersionDetail({
    int? rarity,
    Species? version,
  }) = _VersionDetail;

  factory VersionDetail.fromJson(Map<String, dynamic> json) => _$VersionDetailFromJson(json);
}

// freezed version of Move
@freezed
class Move with _$Move {
  factory Move({
    Species? move,
    List<VersionGroupDetail>? versionGroupDetails,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}

// freezed version of VersionGroupDetail
@freezed
class VersionGroupDetail with _$VersionGroupDetail {
  factory VersionGroupDetail({
    int? levelLearnedAt,
    Species? moveLearnMethod,
    Species? versionGroup,
  }) = _VersionGroupDetail;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailFromJson(json);
}


// freezed version of GenerationV
@freezed
class GenerationV with _$GenerationV {
  factory GenerationV({
    Sprites? blackWhite,
  }) = _GenerationV;

  factory GenerationV.fromJson(Map<String, dynamic> json) => _$GenerationVFromJson(json);
}

// freezed version of GenerationIv
@freezed
class GenerationIv with _$GenerationIv {
  factory GenerationIv({
    Sprites? diamondPearl,
    Sprites? heartgoldSoulsilver,
    Sprites? platinum,
  }) = _GenerationIv;

  factory GenerationIv.fromJson(Map<String, dynamic> json) => _$GenerationIvFromJson(json);
}

// freezed version of Versions
@freezed
class Versions with _$Versions {
  factory Versions({
    GenerationI? generationI,
    GenerationIi? generationIi,
    GenerationIii? generationIii,
    GenerationIv? generationIv,
    GenerationV? generationV,
    Map<String, Home>? generationVi,
    GenerationVii? generationVii,
    GenerationViii? generationViii,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) => _$VersionsFromJson(json);
}

// freezed version of Other
@freezed
class Other with _$Other {
  factory Other({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialArtwork,
    Sprites? showdown,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}

// freezed version of Sprites
@freezed
class Sprites with _$Sprites {
  factory Sprites({
    String? backDefault,
    String? backFemale,
    String? backShiny,
    String? backShinyFemale,
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
    Other? other,
    Versions? versions,
    Sprites? animated,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) => _$SpritesFromJson(json);
}

// freezed version of GenerationI
@freezed
class GenerationI with _$GenerationI {
  factory GenerationI({
    RedBlue? redBlue,
    RedBlue? yellow,
  }) = _GenerationI;

  factory GenerationI.fromJson(Map<String, dynamic> json) => _$GenerationIFromJson(json);
}

// freezed version of RedBlue
@freezed
class RedBlue with _$RedBlue {
  factory RedBlue({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) = _RedBlue;

  factory RedBlue.fromJson(Map<String, dynamic> json) => _$RedBlueFromJson(json);
}

// freezed version of GenerationIi
@freezed
class GenerationIi with _$GenerationIi {
  factory GenerationIi({
    Crystal? crystal,
    Gold? gold,
    Gold? silver,
  }) = _GenerationIi;

  factory GenerationIi.fromJson(Map<String, dynamic> json) => _$GenerationIiFromJson(json);
}

// freezed version of Crystal
@freezed
class Crystal with _$Crystal {
  factory Crystal({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) = _Crystal;

  factory Crystal.fromJson(Map<String, dynamic> json) => _$CrystalFromJson(json);
}

// freezed version of Gold
@freezed
class Gold with _$Gold {
  factory Gold({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) = _Gold;

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);
}

// freezed version of GenerationIii
@freezed
class GenerationIii with _$GenerationIii {
  factory GenerationIii({
    OfficialArtwork? emerald,
    Gold? fireredLeafgreen,
    Gold? rubySapphire,
  }) = _GenerationIii;

  factory GenerationIii.fromJson(Map<String, dynamic> json) => _$GenerationIiiFromJson(json);
}

// freezed version of OfficialArtwork
@freezed
class OfficialArtwork with _$OfficialArtwork {
  factory OfficialArtwork({
    String? frontDefault,
    String? frontShiny,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) => _$OfficialArtworkFromJson(json);
}

// freezed version of Home
@freezed
class Home with _$Home {
  factory Home({
    String? frontDefault,
    String? frontFemale,
    String? frontShiny,
    String? frontShinyFemale,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

// freezed version of GenerationVii
@freezed
class GenerationVii with _$GenerationVii {
  factory GenerationVii({
    DreamWorld? icons,
    Home? ultraSunUltraMoon,
  }) = _GenerationVii;

  factory GenerationVii.fromJson(Map<String, dynamic> json) => _$GenerationViiFromJson(json);
}

// freezed version of DreamWorld
@freezed
class DreamWorld with _$DreamWorld {
  factory DreamWorld({
    String? frontDefault,
    String? frontFemale,
  }) = _DreamWorld;

  factory DreamWorld.fromJson(Map<String, dynamic> json) => _$DreamWorldFromJson(json);
}

// freezed version of GenerationViii
@freezed
class GenerationViii with _$GenerationViii {
  factory GenerationViii({
    DreamWorld? icons,
  }) = _GenerationViii;

  factory GenerationViii.fromJson(Map<String, dynamic> json) => _$GenerationViiiFromJson(json);
}

// freezed version of Stat
@freezed
class Stat with _$Stat {
  factory Stat({
    int? baseStat,
    int? effort,
    Species? stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

// freezed version of Type
@freezed
class Type with _$Type {
  factory Type({
    int? slot,
    Species? type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}