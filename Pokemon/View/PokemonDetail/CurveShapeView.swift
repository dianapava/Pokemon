//
//  CurveShapeView.swift
//  Pokemon
//
//  Created by Diana Pava Avila on 26/07/24.
//

import SwiftUI

struct CurveShapeLeft: Shape {
    var path = Path()
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX / 4, y: (rect.midY)),
                      control2: CGPoint(x: (rect.midY * 2), y: rect.midY))
        path.closeSubpath()
        return path
    }
}
struct CurveShapeRight: Shape {
    var path = Path()
    func path(in rect: CGRect) -> Path {
        print(rect)
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addCurve(to: CGPoint(x: rect.maxX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX, y: rect.midY),
                      control2: CGPoint(x: rect.midY * (-1), y: rect.midY))
        path.closeSubpath()
        return path
    }
}

