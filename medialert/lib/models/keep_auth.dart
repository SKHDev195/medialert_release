import 'package:isar/isar.dart';

part 'keep_auth.g.dart';

@collection
@Name("KeepAuth")
final class KeepAuth {
  KeepAuth({
    required this.isEnabled,
  });

  @Name("id")
  Id keepAuthId = 1;

  @Name("isEnabled")
  bool isEnabled;
}
