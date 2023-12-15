enum DosageType {
  pills(
    prettyName: 'pill(s)',
  ),
  drops(
    prettyName: 'drop(s)',
  ),
  teaSpoons(
    prettyName: 'tea spoon(s)',
  ),
  tableSpoons(
    prettyName: 'table spoon(s)',
  ),
  injections(
    prettyName: 'injection(s)',
  ),
  milligrams(
    prettyName: 'milligram(s)',
  ),
  grams(
    prettyName: 'gram(s)',
  );

  const DosageType({
    required this.prettyName,
  });

  final String prettyName;
}
