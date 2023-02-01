library book;

export 'package:flutter/widgets.dart' hide Locale;
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:auto_route/auto_route.dart';
export 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
export 'package:flutter/material.dart' show Colors;
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:dio/dio.dart';

import 'package:flutter/material.dart' hide Locale;
import 'package:flutter/cupertino.dart' hide Locale;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';

export 'models/category.dart';
export 'models/book.dart';

import 'main_lib.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:flutter/semantics.dart';

part 'shared/extensions/build_context_extension.dart';
part 'shared/theme/theme_colors.dart';
part 'shared/theme/app_colors.dart';
part 'shared/theme/theme_fonts.dart';
part 'shared/theme/theme_icons.dart';
part 'shared/extensions/image_extensions.dart';
