import 'base_url.dart';

class PayBoxConfig {
  /// The TMDB API is mostly used for loading actor avatars.
  ///
  /// Having a real API key here is optional; if this doesn't
  /// contain the real API key, the app will still work, but
  /// the actor avatars won't load.
  static final String baseURL = BASEURL;
  static final styleVarialbles = {
    'splashBackgroundColor': 0xFFE8E8E3,
    'actionButtonNegativeColor': 0xFFC0C0C0,
    'buttonTextColor': 0xFFFFFFFF,
    'dividerVerticalColor': 0xFFBABABA,
    'mapIconButton': 0xFF707070,
    'listItemIconColor': 0xFFB0B0B0,
    'darkTextColor': 0xFF373737,
    'primaryTextColor': 0xFF677682,
    'secondaryTextColor': 0xFF757575,
    'tertiaryTextColor': 0xFF9E9E9E,
    'fourthTextColor': 0xFFC6C6D0,
    'liteTextColor': 0xFFFFFFFF,
    'inactiveColor': 0xFF96A8B2,
    'activeColor': 0xFF399d90,
    'onCallColor': 0xFFe29047,
  };
}
