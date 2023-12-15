import 'package:isar/isar.dart';

part 'token.g.dart';

@collection
@Name("Token")
final class Token {
  Token({
    required this.value,
  });

  @Name("id")
  Id tokenId = Isar.autoIncrement;

  @Name("value")
  String value;
}
