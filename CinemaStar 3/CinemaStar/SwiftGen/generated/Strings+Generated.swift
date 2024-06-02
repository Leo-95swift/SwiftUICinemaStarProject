// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum S {
  /// chevron.backward
  internal static let backbutton = S.tr("Localizable", "backbutton", fallback: "chevron.backward")
  /// chevron.down
  internal static let chevronDOWN = S.tr("Localizable", "chevronDOWN", fallback: "chevron.down")
  /// chevron.up
  internal static let chevronUP = S.tr("Localizable", "chevronUP", fallback: "chevron.up")
  /// heart.fill
  internal static let heartButtonFilled = S.tr("Localizable", "heartButtonFilled", fallback: "heart.fill")
  /// heart
  internal static let heartButtonRegular = S.tr("Localizable", "heartButtonRegular", fallback: "heart")
  /// TokenKey
  internal static let keychainTokenKey = S.tr("Localizable", "KeychainTokenKey", fallback: "TokenKey")
  /// B0K9Y05-8TT4MP4-M94MZ6J-Y673K4D
  internal static let token1 = S.tr("Localizable", "token1", fallback: "B0K9Y05-8TT4MP4-M94MZ6J-Y673K4D")
  /// YTWNR4R-V9MM33F-MZDXDN5-MZKAD3D
  internal static let token2 = S.tr("Localizable", "token2", fallback: "YTWNR4R-V9MM33F-MZDXDN5-MZKAD3D")
  /// E4KJFZY-79S463B-Q5PNJKE-JD6GQRM
  internal static let token3 = S.tr("Localizable", "token3", fallback: "E4KJFZY-79S463B-Q5PNJKE-JD6GQRM")
  /// YK5JXSC-Q4BMZ92-NXXTRQ0-HJD6DMC
  internal static let token4 = S.tr("Localizable", "token4", fallback: "YK5JXSC-Q4BMZ92-NXXTRQ0-HJD6DMC")
  /// HY9F3WW-KF0MSP4-PTVDWDW-114VY40
  internal static let token5 = S.tr("Localizable", "token5", fallback: "HY9F3WW-KF0MSP4-PTVDWDW-114VY40")
  internal enum DetailView {
    /// Актеры и съемочная группа
    internal static let castSection = S.tr("Localizable", "DetailView.castSection", fallback: "Актеры и съемочная группа")
    /// Язык
    internal static let language = S.tr("Localizable", "DetailView.language", fallback: "Язык")
    /// Смотрите также
    internal static let recommendedSection = S.tr("Localizable", "DetailView.recommendedSection", fallback: "Смотрите также")
    /// Смотреть
    internal static let watchButton = S.tr("Localizable", "DetailView.watchButton", fallback: "Смотреть")
    internal enum Alert {
      /// Функционал в разработке :(
      internal static let message = S.tr("Localizable", "DetailView.alert.message", fallback: "Функционал в разработке :(")
      /// Ок
      internal static let ok = S.tr("Localizable", "DetailView.alert.ok", fallback: "Ок")
      /// Упс!
      internal static let text = S.tr("Localizable", "DetailView.alert.text", fallback: "Упс!")
    }
  }
  internal enum Error {
    /// ERROR!!!
    internal static let text = S.tr("Localizable", "Error.text", fallback: "ERROR!!!")
  }
  internal enum MoviesView {
    internal enum Title {
      /// Localizable.strings
      ///   CinemaStar
      /// 
      ///   Created by Kostya Khvan on 30.05.2024.
      internal static let firstPart = S.tr("Localizable", "MoviesView.title.firstPart", fallback: "Смотри исторические\nфильмы на ")
      /// CINEMA STAR
      internal static let secondPart = S.tr("Localizable", "MoviesView.title.secondPart", fallback: "CINEMA STAR")
    }
  }
  internal enum NetworkService {
    /// X-API-KEY
    internal static let httpHeader = S.tr("Localizable", "NetworkService.HTTPHeader", fallback: "X-API-KEY")
    /// https://api.kinopoisk.dev/v1.4/movie/
    internal static let movieDetailURL = S.tr("Localizable", "NetworkService.movieDetailURL", fallback: "https://api.kinopoisk.dev/v1.4/movie/")
    /// https://api.kinopoisk.dev/v1.4/movie/search?query=история
    internal static let moviesURL = S.tr("Localizable", "NetworkService.moviesURL", fallback: "https://api.kinopoisk.dev/v1.4/movie/search?query=история")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension S {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
