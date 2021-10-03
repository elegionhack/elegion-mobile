enum ProfileSortingType { bonuses, frozenBonuses, auto }

extension Title on ProfileSortingType {
  String get title {
    return {
      ProfileSortingType.auto: 'По умолчанию',
      ProfileSortingType.bonuses: 'Бонусам',
      ProfileSortingType.frozenBonuses: 'Замороженным бонусам',
    }[this]!;
  }
}
