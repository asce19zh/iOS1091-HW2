//
//  ContentView.swift
//  00757043
//
//  Created by User09 on 2020/10/1.
//130   164 227

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Path { (path) in
            path.move(to: CGPoint(x: 133, y: 33))
            path.addQuadCurve(to: CGPoint(x: 114, y: 15), control:
            CGPoint(x: 124, y: 22))
            path.addQuadCurve(to: CGPoint(x: 116, y: 32), control:
            CGPoint(x: 110, y: 30))
            path.addQuadCurve(to: CGPoint(x: 65, y: 61), control:
            CGPoint(x: 90, y: 30))
                path.addLine(to: CGPoint(x:33, y:67))
                path.addLine(to: CGPoint(x:43, y:106))
                path.addCurve(to: CGPoint(x:28, y:249), control1: CGPoint(x: 28, y:197), control2: CGPoint(x:-10, y:220))
                path.addQuadCurve(to: CGPoint(x:21, y: 217), control: CGPoint(x:15, y: 235))
                path.addArc(center: CGPoint(x:59, y:217), radius: 38.5, startAngle: .degrees(180), endAngle: .degrees(10), clockwise: true)
                path.addQuadCurve(to: CGPoint(x:83, y: 226), control: CGPoint(x:88, y: 230))
                path.addQuadCurve(to: CGPoint(x:75, y: 205), control: CGPoint(x:80, y: 215))
                path.addQuadCurve(to: CGPoint(x:183, y: 208), control: CGPoint(x:129, y: 225))
                path.addQuadCurve(to: CGPoint(x:179, y: 229), control: CGPoint(x:178, y: 218))
                path.addQuadCurve(to: CGPoint(x:164, y: 227), control: CGPoint(x:171, y: 230))
                path.addQuadCurve(to: CGPoint(x:185, y: 252), control: CGPoint(x:165, y: 245))
                path.addQuadCurve(to: CGPoint(x:235, y: 220), control: CGPoint(x:225, y: 256))
                path.addQuadCurve(to: CGPoint(x:231, y: 244), control: CGPoint(x:236, y: 232))
                path.addQuadCurve(to: CGPoint(x:228, y: 143), control: CGPoint(x:255, y: 215))
                path.addLine(to: CGPoint(x:217, y:107))
                path.addLine(to: CGPoint(x:226, y:66))
                path.addLine(to: CGPoint(x:190, y:58))
                path.addQuadCurve(to: CGPoint(x:133, y: 33), control: CGPoint(x:170, y: 29))
                
            }.stroke(lineWidth: 2)        }


        
    }}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
