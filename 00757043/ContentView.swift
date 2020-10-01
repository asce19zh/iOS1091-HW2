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
            Group {
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
                    path.addArc(center: CGPoint(x:59, y:217), radius: 38.5, startAngle: .degrees(176), endAngle: .degrees(10), clockwise: true)
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
                    
                }.stroke(lineWidth: 2)
                Path{ (path) in
                    path.move(to: CGPoint(x:217, y:107))
                    path.addQuadCurve(to: CGPoint(x:190, y:58), control: CGPoint(x:206, y:79))
                }.stroke(lineWidth: 2)
                Path{(path) in
                    path.move(to: CGPoint(x:65, y:61))
                    path.addQuadCurve(to: CGPoint(x:43, y:106), control: CGPoint(x:49, y:80))
                }.stroke(lineWidth: 2)   //outline
                Path{(path) in
                    path.move(to: CGPoint(x:34, y:147))
                    path.addQuadCurve(to: CGPoint(x:83, y:227), control: CGPoint(x:39, y:213))
                    path.addCurve(to: CGPoint(x: 50, y: 87), control1: CGPoint(x: 73, y: 194), control2: CGPoint(x: 40, y: 152))
                }.stroke(lineWidth: 0.5)            }

            Path{(path) in
                path.move(to: CGPoint(x: 60, y: 172))
                path.addQuadCurve(to: CGPoint(x: 94, y: 55), control: CGPoint(x: 62, y: 83))
                path.move(to: CGPoint(x: 123, y: 74))
                path.addQuadCurve(to: CGPoint(x: 151, y: 126), control: CGPoint(x: 124, y: 116))
                path.move(to: CGPoint(x: 168, y: 61))
                path.addQuadCurve(to: CGPoint(x: 202, y: 173), control: CGPoint(x: 196, y: 104))
                path.move(to:CGPoint(x: 210, y: 93))
                path.addCurve(to: CGPoint(x: 179, y: 230), control1: CGPoint(x: 219, y:188), control2: CGPoint(x:177, y:194))
                path.move(to: CGPoint(x: 227, y: 140))
                path.addQuadCurve(to: CGPoint(x: 163, y: 227), control: CGPoint(x: 217, y: 246))
            }.stroke(lineWidth: 0.5)//xi
            Path{(path) in
                path.move(to: CGPoint(x: 62, y: 139))
                path.addQuadCurve(to: CGPoint(x: 75, y: 105), control: CGPoint(x: 70, y: 128))
                path.addQuadCurve(to: CGPoint(x: 90, y: 130), control: CGPoint(x: 74, y: 129)) //75123
                path.addQuadCurve(to: CGPoint(x: 90, y: 123), control: CGPoint(x: 88, y: 126))
                path.move(to: CGPoint(x: 87, y: 101))
                path.addQuadCurve(to: CGPoint(x: 98, y: 133), control: CGPoint(x: 87, y: 126))
                path.addQuadCurve(to: CGPoint(x: 104, y: 87), control: CGPoint(x: 92, y: 108))
                path.move(to: CGPoint(x: 114, y: 59))
                path.addQuadCurve(to: CGPoint(x: 105, y: 103), control: CGPoint(x: 101, y: 81))
                path.addQuadCurve(to: CGPoint(x: 149, y: 125), control: CGPoint(x: 116, y: 132))
                path.addQuadCurve(to: CGPoint(x: 145, y: 86), control: CGPoint(x: 141, y: 105))
                path.addQuadCurve(to: CGPoint(x: 178, y: 124), control: CGPoint(x: 152, y: 127))
                path.move(to: CGPoint(x: 181, y: 125))
                path.addQuadCurve(to: CGPoint(x: 166, y: 93), control: CGPoint(x: 169, y: 121))
                path.addQuadCurve(to: CGPoint(x: 195, y: 127), control: CGPoint(x: 175, y: 119))
            }.stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/) //kami
            Path{(path) in
                path.move(to: CGPoint(x: 102, y: 183))
                path.addQuadCurve(to: CGPoint(x: 160, y: 181), control: CGPoint(x: 131, y: 190))
                path.addQuadCurve(to: CGPoint(x: 102, y: 183), control: CGPoint(x: 131, y: 200))
                
            }.stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/) //kuchi
            Eye().stroke()
            Eye().stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).offset(x: -60, y: 0)
            Path{(path) in
                path.move(to: CGPoint(x: 130, y: 166))
                path.addLine(to: CGPoint(x: 130, y: 169))
            }.stroke(style: StrokeStyle(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/,lineCap:.round
            ))
            Path{(path) in
                path.move(to: CGPoint(x: 99, y: 141))
                path.addQuadCurve(to: CGPoint(x: 114, y: 147), control: CGPoint(x: 108, y: 143))
            }.stroke(lineWidth: 1)
            Path{(path) in
                path.move(to: CGPoint(x: 144, y: 148))
                path.addQuadCurve(to: CGPoint(x: 159, y: 142), control: CGPoint(x: 147, y: 146))
            }.stroke(lineWidth: 1)
            
        }
    }}
struct Eye: Shape{
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 63, y: 154))
            path.addCurve(to: CGPoint(x: 115, y: 152), control1: CGPoint(x: 86, y: 148), control2: CGPoint(x: 111, y: 154))
            path.move(to: CGPoint(x: 113, y: 152))
            path.addCurve(to: CGPoint(x: 63, y: 154), control1: CGPoint(x: 111, y: 154), control2: CGPoint(x: 88, y: 136))
            //path.addQuadCurve(to: CGPoint(x: 63, y: 154), control: CGPoint(x: 85, y: 141))
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
