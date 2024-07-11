// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: (json['baseExperience'] as num?)?.toInt(),
      cries: json['cries'] == null
          ? null
          : Cries.fromJson(json['cries'] as Map<String, dynamic>),
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['gameIndices'] as List<dynamic>?)
          ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num?)?.toInt(),
      heldItems: (json['heldItems'] as List<dynamic>?)
          ?.map((e) => HeldItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      isDefault: json['isDefault'] as bool?,
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      pastAbilities: json['pastAbilities'] as List<dynamic>?,
      pastTypes: json['pastTypes'] as List<dynamic>?,
      species: json['species'] == null
          ? null
          : Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'cries': instance.cries,
      'forms': instance.forms,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'heldItems': instance.heldItems,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'pastAbilities': instance.pastAbilities,
      'pastTypes': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$AbilityImpl _$$AbilityImplFromJson(Map<String, dynamic> json) =>
    _$AbilityImpl(
      ability: json['ability'] == null
          ? null
          : Species.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
      slot: (json['slot'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AbilityImplToJson(_$AbilityImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$CriesImpl _$$CriesImplFromJson(Map<String, dynamic> json) => _$CriesImpl(
      latest: json['latest'] as String?,
      legacy: json['legacy'] as String?,
    );

Map<String, dynamic> _$$CriesImplToJson(_$CriesImpl instance) =>
    <String, dynamic>{
      'latest': instance.latest,
      'legacy': instance.legacy,
    };

_$GameIndexImpl _$$GameIndexImplFromJson(Map<String, dynamic> json) =>
    _$GameIndexImpl(
      gameIndex: (json['gameIndex'] as num?)?.toInt(),
      version: json['version'] == null
          ? null
          : Species.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameIndexImplToJson(_$GameIndexImpl instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };

_$HeldItemImpl _$$HeldItemImplFromJson(Map<String, dynamic> json) =>
    _$HeldItemImpl(
      item: json['item'] == null
          ? null
          : Species.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['versionDetails'] as List<dynamic>?)
          ?.map((e) => VersionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeldItemImplToJson(_$HeldItemImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
      'versionDetails': instance.versionDetails,
    };

_$VersionDetailImpl _$$VersionDetailImplFromJson(Map<String, dynamic> json) =>
    _$VersionDetailImpl(
      rarity: (json['rarity'] as num?)?.toInt(),
      version: json['version'] == null
          ? null
          : Species.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionDetailImplToJson(_$VersionDetailImpl instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };

_$MoveImpl _$$MoveImplFromJson(Map<String, dynamic> json) => _$MoveImpl(
      move: json['move'] == null
          ? null
          : Species.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
          ?.map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MoveImplToJson(_$MoveImpl instance) =>
    <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };

_$VersionGroupDetailImpl _$$VersionGroupDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$VersionGroupDetailImpl(
      levelLearnedAt: (json['levelLearnedAt'] as num?)?.toInt(),
      moveLearnMethod: json['moveLearnMethod'] == null
          ? null
          : Species.fromJson(json['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup: json['versionGroup'] == null
          ? null
          : Species.fromJson(json['versionGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionGroupDetailImplToJson(
        _$VersionGroupDetailImpl instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

_$GenerationVImpl _$$GenerationVImplFromJson(Map<String, dynamic> json) =>
    _$GenerationVImpl(
      blackWhite: json['blackWhite'] == null
          ? null
          : Sprites.fromJson(json['blackWhite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationVImplToJson(_$GenerationVImpl instance) =>
    <String, dynamic>{
      'blackWhite': instance.blackWhite,
    };

_$GenerationIvImpl _$$GenerationIvImplFromJson(Map<String, dynamic> json) =>
    _$GenerationIvImpl(
      diamondPearl: json['diamondPearl'] == null
          ? null
          : Sprites.fromJson(json['diamondPearl'] as Map<String, dynamic>),
      heartgoldSoulsilver: json['heartgoldSoulsilver'] == null
          ? null
          : Sprites.fromJson(
              json['heartgoldSoulsilver'] as Map<String, dynamic>),
      platinum: json['platinum'] == null
          ? null
          : Sprites.fromJson(json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationIvImplToJson(_$GenerationIvImpl instance) =>
    <String, dynamic>{
      'diamondPearl': instance.diamondPearl,
      'heartgoldSoulsilver': instance.heartgoldSoulsilver,
      'platinum': instance.platinum,
    };

_$VersionsImpl _$$VersionsImplFromJson(Map<String, dynamic> json) =>
    _$VersionsImpl(
      generationI: json['generationI'] == null
          ? null
          : GenerationI.fromJson(json['generationI'] as Map<String, dynamic>),
      generationIi: json['generationIi'] == null
          ? null
          : GenerationIi.fromJson(json['generationIi'] as Map<String, dynamic>),
      generationIii: json['generationIii'] == null
          ? null
          : GenerationIii.fromJson(
              json['generationIii'] as Map<String, dynamic>),
      generationIv: json['generationIv'] == null
          ? null
          : GenerationIv.fromJson(json['generationIv'] as Map<String, dynamic>),
      generationV: json['generationV'] == null
          ? null
          : GenerationV.fromJson(json['generationV'] as Map<String, dynamic>),
      generationVi: (json['generationVi'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Home.fromJson(e as Map<String, dynamic>)),
      ),
      generationVii: json['generationVii'] == null
          ? null
          : GenerationVii.fromJson(
              json['generationVii'] as Map<String, dynamic>),
      generationViii: json['generationViii'] == null
          ? null
          : GenerationViii.fromJson(
              json['generationViii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionsImplToJson(_$VersionsImpl instance) =>
    <String, dynamic>{
      'generationI': instance.generationI,
      'generationIi': instance.generationIi,
      'generationIii': instance.generationIii,
      'generationIv': instance.generationIv,
      'generationV': instance.generationV,
      'generationVi': instance.generationVi,
      'generationVii': instance.generationVii,
      'generationViii': instance.generationViii,
    };

_$OtherImpl _$$OtherImplFromJson(Map<String, dynamic> json) => _$OtherImpl(
      dreamWorld: json['dreamWorld'] == null
          ? null
          : DreamWorld.fromJson(json['dreamWorld'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: json['officialArtwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
      showdown: json['showdown'] == null
          ? null
          : Sprites.fromJson(json['showdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherImplToJson(_$OtherImpl instance) =>
    <String, dynamic>{
      'dreamWorld': instance.dreamWorld,
      'home': instance.home,
      'officialArtwork': instance.officialArtwork,
      'showdown': instance.showdown,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      backDefault: json['backDefault'] as String?,
      backFemale: json['backFemale'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyFemale: json['backShinyFemale'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
      animated: json['animated'] == null
          ? null
          : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
      'other': instance.other,
      'versions': instance.versions,
      'animated': instance.animated,
    };

_$GenerationIImpl _$$GenerationIImplFromJson(Map<String, dynamic> json) =>
    _$GenerationIImpl(
      redBlue: json['redBlue'] == null
          ? null
          : RedBlue.fromJson(json['redBlue'] as Map<String, dynamic>),
      yellow: json['yellow'] == null
          ? null
          : RedBlue.fromJson(json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationIImplToJson(_$GenerationIImpl instance) =>
    <String, dynamic>{
      'redBlue': instance.redBlue,
      'yellow': instance.yellow,
    };

_$RedBlueImpl _$$RedBlueImplFromJson(Map<String, dynamic> json) =>
    _$RedBlueImpl(
      backDefault: json['backDefault'] as String?,
      backGray: json['backGray'] as String?,
      backTransparent: json['backTransparent'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontGray: json['frontGray'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$$RedBlueImplToJson(_$RedBlueImpl instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backGray': instance.backGray,
      'backTransparent': instance.backTransparent,
      'frontDefault': instance.frontDefault,
      'frontGray': instance.frontGray,
      'frontTransparent': instance.frontTransparent,
    };

_$GenerationIiImpl _$$GenerationIiImplFromJson(Map<String, dynamic> json) =>
    _$GenerationIiImpl(
      crystal: json['crystal'] == null
          ? null
          : Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
      gold: json['gold'] == null
          ? null
          : Gold.fromJson(json['gold'] as Map<String, dynamic>),
      silver: json['silver'] == null
          ? null
          : Gold.fromJson(json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationIiImplToJson(_$GenerationIiImpl instance) =>
    <String, dynamic>{
      'crystal': instance.crystal,
      'gold': instance.gold,
      'silver': instance.silver,
    };

_$CrystalImpl _$$CrystalImplFromJson(Map<String, dynamic> json) =>
    _$CrystalImpl(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyTransparent: json['backShinyTransparent'] as String?,
      backTransparent: json['backTransparent'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyTransparent: json['frontShinyTransparent'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$$CrystalImplToJson(_$CrystalImpl instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'backShinyTransparent': instance.backShinyTransparent,
      'backTransparent': instance.backTransparent,
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
      'frontShinyTransparent': instance.frontShinyTransparent,
      'frontTransparent': instance.frontTransparent,
    };

_$GoldImpl _$$GoldImplFromJson(Map<String, dynamic> json) => _$GoldImpl(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$$GoldImplToJson(_$GoldImpl instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
      'frontTransparent': instance.frontTransparent,
    };

_$GenerationIiiImpl _$$GenerationIiiImplFromJson(Map<String, dynamic> json) =>
    _$GenerationIiiImpl(
      emerald: json['emerald'] == null
          ? null
          : OfficialArtwork.fromJson(json['emerald'] as Map<String, dynamic>),
      fireredLeafgreen: json['fireredLeafgreen'] == null
          ? null
          : Gold.fromJson(json['fireredLeafgreen'] as Map<String, dynamic>),
      rubySapphire: json['rubySapphire'] == null
          ? null
          : Gold.fromJson(json['rubySapphire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationIiiImplToJson(_$GenerationIiiImpl instance) =>
    <String, dynamic>{
      'emerald': instance.emerald,
      'fireredLeafgreen': instance.fireredLeafgreen,
      'rubySapphire': instance.rubySapphire,
    };

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
    );

Map<String, dynamic> _$$OfficialArtworkImplToJson(
        _$OfficialArtworkImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
    };

_$HomeImpl _$$HomeImplFromJson(Map<String, dynamic> json) => _$HomeImpl(
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
    );

Map<String, dynamic> _$$HomeImplToJson(_$HomeImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
    };

_$GenerationViiImpl _$$GenerationViiImplFromJson(Map<String, dynamic> json) =>
    _$GenerationViiImpl(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: json['ultraSunUltraMoon'] == null
          ? null
          : Home.fromJson(json['ultraSunUltraMoon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationViiImplToJson(_$GenerationViiImpl instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'ultraSunUltraMoon': instance.ultraSunUltraMoon,
    };

_$DreamWorldImpl _$$DreamWorldImplFromJson(Map<String, dynamic> json) =>
    _$DreamWorldImpl(
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
    );

Map<String, dynamic> _$$DreamWorldImplToJson(_$DreamWorldImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
    };

_$GenerationViiiImpl _$$GenerationViiiImplFromJson(Map<String, dynamic> json) =>
    _$GenerationViiiImpl(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationViiiImplToJson(
        _$GenerationViiiImpl instance) =>
    <String, dynamic>{
      'icons': instance.icons,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      baseStat: (json['baseStat'] as num?)?.toInt(),
      effort: (json['effort'] as num?)?.toInt(),
      stat: json['stat'] == null
          ? null
          : Species.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      slot: (json['slot'] as num?)?.toInt(),
      type: json['type'] == null
          ? null
          : Species.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
