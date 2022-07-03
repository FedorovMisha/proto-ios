// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSImage
  public typealias AssetImageTypeAlias = NSImage
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIImage
  public typealias AssetImageTypeAlias = UIImage
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs


// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public extension AssetImageTypeAlias {
  private static let _bundle = Bundle(for: BundleToken.self)

}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

private final class BundleToken {}
