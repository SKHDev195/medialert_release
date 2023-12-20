import 'package:isar/isar.dart';

part 'theme.g.dart';

@collection
@Name("Theme")
final class Theme {
  Theme({
    required this.isDark,
  });

  @Name("id")
  Id themeId = 1;

  @Name("isDark")
  bool isDark;
}
