enum Sport {
  basketball('BASKETBALL'),
  football('FOOTBALL'),
  baseball('BASEBALL'),
  pickleball('PICKLEBALL'),
  volleyball('VOLLEYBALL'),
  soccer('SOCCER');

  const Sport(this.value);

  final String value;

   static Sport fromString(String value) {
    return Sport.values.firstWhere(
      (element) => element.value == value,
      orElse: () => Sport.basketball,
    );
  }
}
