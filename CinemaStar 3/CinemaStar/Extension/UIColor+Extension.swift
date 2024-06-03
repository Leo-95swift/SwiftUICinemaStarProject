// UIColor+Extension.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Расширение для быстрого доступа к добавленным цветам
extension UIColor {
    /// Храненилище созданных цветов
    static var colorStoreMap: [String: UIColor] = [:]

    /// Получение цвета по rgb
    class func rgba(
        _ red: CGFloat,
        _ green: CGFloat,
        _ blue: CGFloat,
        _ alpha: CGFloat
    ) -> UIColor {
        let key = "\(red)\(green)\(blue)\(alpha)"
        if let color = colorStoreMap[key] {
            return color
        }

        let color = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
        colorStoreMap[key] = color
        return color
    }
}
