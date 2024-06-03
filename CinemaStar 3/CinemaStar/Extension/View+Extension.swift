// View+Extension.swift
// Copyright © RoadMap. All rights reserved.

import SwiftUI

// Расширение для добавления фона и контента в виде ZStack
public extension View {
    /// Метод создает ZStack с фоном и переданным контентом
    /// - Parameters:
    ///   - color: цвет фона, используется ShapeStyle
    ///   - content: вью, добавляемое поверх фона
    /// - Returns: новый модификатор View с ZStack
    func backgroundStackView<Content: View, S: ShapeStyle>(color: S, content: () -> Content) -> some View {
        ZStack {
            Rectangle()
                .fill(color) // Заливка фона переданным цветом
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Установка размеров
                .ignoresSafeArea(.all) // Игнорирование безопасных областей
            content() // Добавление переданного контента
        }
    }
}
