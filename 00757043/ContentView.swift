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
            Image("anya bg")
                .resizable()
                .frame(width: 375.0, height: 688)
            Group {
                HairDeco().fill(Color(red: 99/255, green: 66/255, blue: 69/255))
                HDsideLeft().fill(Color(red: 224/255, green: 198/255, blue: 184/255))
                HDsideRight().fill(Color(red: 224/255, green: 198/255, blue: 184/255))
                Head().fill(Color(red: 226/255, green: 163/255, blue: 156/255))
                Head().stroke(lineWidth: 2)
                HairDeco().stroke(lineWidth:2)
                FaceColor().fill(Color(red: 255/255, green: 226/255, blue: 210/255))
                Face().stroke(lineWidth: 1)
                Hairdet().stroke(lineWidth: 0.5)
                HDsideLeft().stroke(lineWidth: 0.5)

            }
            HDsideRight().stroke(lineWidth: 0.5)
            Group{
                Mouse().fill(Color.white)
                Mouse().stroke(lineWidth: 1)  //kuchi
                Eye().fill(Color.white)
                EyeView()
                Eye().stroke()
                LeftEyeView()
                Eyeball()
                Eyeball().rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).offset(x: -115, y: 0)
                Path{(path) in
                    path.move(to: CGPoint(x: 99, y: 141))
                    path.addQuadCurve(to: CGPoint(x: 114, y: 147), control: CGPoint(x: 108, y: 143))
                }.stroke(lineWidth: 1)  //L
                Path{(path) in
                    path.move(to: CGPoint(x: 144, y: 148))
                    path.addQuadCurve(to: CGPoint(x: 159, y: 142), control: CGPoint(x: 147, y: 146))
                }.stroke(lineWidth: 1) //R
            }
            Group{
                Brow().fill(Color(red: 226/255, green: 163/255, blue: 156/255))
                Brow().stroke(lineWidth: 0.5)

                Path{(path) in
                    path.move(to: CGPoint(x: 130, y: 166))
                    path.addLine(to: CGPoint(x: 130, y: 169))
                }.stroke(style: StrokeStyle(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/,lineCap:.round
                ))
                Path{(path) in
                    path.move(to: CGPoint(x: 150, y: 285))
                    path.addLine(to: CGPoint(x: 150, y: 250))
                    path.addLine(to:CGPoint(x: 175, y: 280))
                    path.closeSubpath()
                }.fill(Color.white)
                Path(ellipseIn: CGRect(x: 135, y: 260, width: 200, height: 100)).fill(Color.white)
                Text("呵").font(.largeTitle).offset(x:50, y:-30)
            }

                //nose
//            Path{(path) in
//                path.move(to: CGPoint(x: 191, y: 194))
//                path.addQuadCurve(to: CGPoint(x:70, y: 194), control: CGPoint(x:138, y: 225))
//                path.addLine(to: CGPoint(x: 75, y: 205))
//                path.addQuadCurve(to: CGPoint(x:183, y: 208), control: CGPoint(x:129, y: 225))
//                path.addLine(to: CGPoint(x: 191, y: 194))
//            }.fill(Color(red: 190/255, green: 142/255, blue: 155/255))              //nose
        }

    }}
struct Brow:Shape {
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 96, y: 123))
            path.addQuadCurve(to: CGPoint(x: 113, y: 117), control: CGPoint(x: 102, y: 117))//110117
            path.addLine(to:CGPoint(x: 115, y: 119))
            path.addQuadCurve(to:CGPoint(x: 96, y: 123), control: CGPoint(x: 103, y: 119))
            path.move(to:CGPoint(x: 148, y: 116))
            path.addQuadCurve(to:CGPoint(x: 165, y: 124), control: CGPoint(x: 158, y: 114))
            path.addCurve(to: CGPoint(x: 148, y: 116), control1: CGPoint(x: 164, y: 123), control2: CGPoint(x: 154, y: 117))//195127
        }
    }
}
struct Mouse:Shape{
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 102, y: 183))
            path.addQuadCurve(to: CGPoint(x: 160, y: 181), control: CGPoint(x: 131, y: 190))
            path.addQuadCurve(to: CGPoint(x: 102, y: 183), control: CGPoint(x: 131, y: 200))
        }
    }
}
struct HDsideLeft:Shape {
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 40, y: 93))
            path.addArc(center: CGPoint(x: 41, y: 87), radius: 5, startAngle: .degrees(210), endAngle: .degrees(-60), clockwise: false)
            path.addArc(center: CGPoint(x: 48, y: 81), radius: 5, startAngle: .degrees(180), endAngle: .degrees(-100), clockwise: false)
            path.addArc(center: CGPoint(x: 52, y: 74), radius: 5, startAngle: .degrees(160), endAngle: .degrees(300), clockwise: false)
            path.addArc(center: CGPoint(x: 59, y: 68), radius: 5, startAngle: .degrees(180), endAngle: .degrees(-100), clockwise: false)
            path.addLine(to: CGPoint(x: 65, y: 61))
            path.addQuadCurve(to: CGPoint(x:43, y:106), control: CGPoint(x:49, y:80))
            path.addLine(to: CGPoint(x: 40, y: 93))
        }
    }
}
struct HDsideRight: Shape{
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 220, y: 93))
            path.addArc(center: CGPoint(x: 216, y: 89), radius: 5, startAngle: .degrees(0), endAngle: .degrees(240), clockwise: true)
            path.addArc(center: CGPoint(x: 209, y: 83), radius: 5, startAngle: .degrees(0), endAngle: .degrees(260), clockwise: true)
            path.addArc(center: CGPoint(x: 204, y: 77), radius: 5, startAngle: .degrees(0), endAngle: .degrees(280), clockwise: true)
            path.addArc(center: CGPoint(x: 200, y: 70), radius: 5, startAngle: .degrees(20), endAngle: .degrees(260), clockwise: true)
            path.addArc(center: CGPoint(x: 197, y: 63), radius: 3, startAngle: .degrees(20), endAngle: .degrees(280), clockwise: true)
            path.addLine(to: CGPoint(x: 190, y: 58))
            path.addQuadCurve(to: CGPoint(x:217, y:107), control: CGPoint(x:206, y:79))
            path.addLine(to: CGPoint(x: 220, y: 93))



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
struct Eyeball: Shape {
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 97, y: 151))
            path.addQuadCurve(to: CGPoint(x: 97, y: 147), control: CGPoint(x: 98, y: 149))
            path.addQuadCurve(to: CGPoint(x: 78, y: 147), control: CGPoint(x: 88, y: 145))
            path.addQuadCurve(to: CGPoint(x: 79, y: 151), control: CGPoint(x: 78, y: 150))
            path.addQuadCurve(to: CGPoint(x: 97, y: 151), control: CGPoint(x: 88, y: 151))
            
        }    }

}
struct Face:Shape {
    func path(in rect:CGRect) -> Path{
        Path{(path) in
            path.move(to: CGPoint(x: 62, y: 139))
            path.addQuadCurve(to: CGPoint(x: 75, y: 105), control: CGPoint(x: 70, y: 128))
            path.addQuadCurve(to: CGPoint(x: 90, y: 130), control: CGPoint(x: 74, y: 129)) //75123
            path.addQuadCurve(to: CGPoint(x: 90, y: 123), control: CGPoint(x: 88, y: 126))//
            path.move(to: CGPoint(x: 87, y: 101))
            path.addQuadCurve(to: CGPoint(x: 98, y: 133), control: CGPoint(x: 87, y: 126))//
            path.addQuadCurve(to: CGPoint(x: 104, y: 87), control: CGPoint(x: 92, y: 108))//
            path.move(to: CGPoint(x: 114, y: 59))
            path.addQuadCurve(to: CGPoint(x: 105, y: 103), control: CGPoint(x: 101, y: 81))//
            path.addQuadCurve(to: CGPoint(x: 149, y: 125), control: CGPoint(x: 116, y: 132))//
            path.addQuadCurve(to: CGPoint(x: 145, y: 86), control: CGPoint(x: 141, y: 105))//
            path.addQuadCurve(to: CGPoint(x: 178, y: 124), control: CGPoint(x: 152, y: 127))//
            path.move(to: CGPoint(x: 181, y: 125))
            path.addQuadCurve(to: CGPoint(x: 166, y: 93), control: CGPoint(x: 169, y: 121))//
            path.addQuadCurve(to: CGPoint(x: 195, y: 127), control: CGPoint(x: 175, y: 119))
            path.move(to: CGPoint(x: 75, y: 205))
            path.addQuadCurve(to: CGPoint(x:183, y: 208), control: CGPoint(x:129, y: 225))//
            path.move(to: CGPoint(x: 83, y: 226))
            path.addQuadCurve(to: CGPoint(x:75, y: 205), control: CGPoint(x:80, y: 215))
        }
    }
}
struct Hairdet:Shape{
    func path(in rect:CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x:34, y:147))
            path.addQuadCurve(to: CGPoint(x:83, y:227), control: CGPoint(x:39, y:213))
            path.addCurve(to: CGPoint(x: 50, y: 87), control1: CGPoint(x: 73, y: 194), control2: CGPoint(x: 40, y: 152))
            path.move(to: CGPoint(x: 60, y: 172))
            path.addQuadCurve(to: CGPoint(x: 94, y: 55), control: CGPoint(x: 62, y: 83))  //O
            path.move(to: CGPoint(x: 123, y: 74))
            path.addQuadCurve(to: CGPoint(x: 151, y: 126), control: CGPoint(x: 124, y: 116))//X
            path.move(to: CGPoint(x: 168, y: 61))
            path.addQuadCurve(to: CGPoint(x: 202, y: 173), control: CGPoint(x: 196, y: 104))//O
            path.move(to:CGPoint(x: 210, y: 93))
            path.addCurve(to: CGPoint(x: 179, y: 230), control1: CGPoint(x: 219, y:188), control2: CGPoint(x:177, y:194))
            path.move(to: CGPoint(x: 227, y: 140))
            path.addQuadCurve(to: CGPoint(x: 163, y: 227), control: CGPoint(x: 217, y: 246))//X
        }
    }
}
struct FaceColor:Shape {
    func path(in rect:CGRect) ->Path{
        Path{(path) in
            path.move(to: CGPoint(x: 75, y: 205))
            path.addQuadCurve(to: CGPoint(x:183, y: 208), control: CGPoint(x:129, y: 225))//
            path.addCurve(to: CGPoint(x: 202, y: 173), control1: CGPoint(x: 192, y: 195), control2: CGPoint(x: 199, y: 180))//195127
            path.addQuadCurve(to: CGPoint(x: 195, y: 127), control: CGPoint(x: 199, y: 141))
            path.addQuadCurve(to: CGPoint(x: 166, y: 93), control: CGPoint(x: 175, y: 119))
            path.addQuadCurve(to: CGPoint(x: 178, y: 124), control: CGPoint(x: 169, y: 119))
            path.addQuadCurve(to: CGPoint(x: 145, y: 86), control: CGPoint(x: 152, y: 127))
            path.addQuadCurve(to: CGPoint(x: 149, y: 125), control: CGPoint(x: 141, y: 105))
            path.addQuadCurve(to: CGPoint(x: 105, y: 103), control: CGPoint(x: 116, y: 132))
            path.addLine(to: CGPoint(x: 104, y: 87))
            path.addQuadCurve(to: CGPoint(x: 98, y: 133), control: CGPoint(x: 92, y: 108))
            path.addQuadCurve(to: CGPoint(x: 90, y: 123), control: CGPoint(x: 93, y: 130))
            path.addQuadCurve(to: CGPoint(x: 90, y: 130), control: CGPoint(x: 88, y: 126))
            path.addQuadCurve(to: CGPoint(x: 75, y: 105), control: CGPoint(x: 74, y: 129))
            path.addQuadCurve(to: CGPoint(x: 62, y: 139), control: CGPoint(x: 70, y: 128))
            path.addLine(to: CGPoint(x: 60, y: 172))
            path.addLine(to: CGPoint(x: 75, y: 205))
            //path.addQuadCurve(to: CGPoint(x: 75, y: 105), control: CGPoint(x: 74, y: 129))
            //path.addQuadCurve(to: CGPoint(x: 202, y: <#T##CGFloat#>), control: <#T##CGPoint#>)

            //path.addCurve(to: CGPoint(x: 179, y: 230), control1: CGPoint(x: 219, y:188), control2: CGPoint(x:177, y:194))//rd

        }
    }
}
struct Head: Shape {
    func path(in rect:CGRect) -> Path{
        Path { (path) in
        path.move(to: CGPoint(x: 133, y: 33))
        path.addQuadCurve(to: CGPoint(x: 114, y: 15), control:
        CGPoint(x: 124, y: 22))
        path.addQuadCurve(to: CGPoint(x: 116, y: 32), control:
        CGPoint(x: 110, y: 30))
        path.addQuadCurve(to: CGPoint(x: 65, y: 61), control:
        CGPoint(x: 90, y: 30))
            path.addQuadCurve(to: CGPoint(x:43, y:106), control: CGPoint(x:49, y:80))
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
            path.addQuadCurve(to: CGPoint(x:190, y:58), control: CGPoint(x:206, y:79))
            path.addQuadCurve(to: CGPoint(x:133, y: 33), control: CGPoint(x:170, y: 29))
            
        }//.stroke(lineWidth: 2)//.fill(Color(red: 226/255, green: 163/255, blue: 156/255))
    }
}
struct HairDeco: Shape {
    func path(in rect:CGRect) -> Path{
            Path{ (path) in
            path.move(to: CGPoint(x:217, y:107))
            path.addLine(to: CGPoint(x:226, y:66))
            path.addLine(to: CGPoint(x:190, y:58))
            path.move(to: CGPoint(x:217, y:107))
            path.addQuadCurve(to: CGPoint(x:190, y:58), control: CGPoint(x:206, y:79))
            path.move(to: CGPoint(x: 65, y: 61))
            path.addLine(to: CGPoint(x:33, y:67))
            path.addLine(to: CGPoint(x:43, y:106))
            path.move(to: CGPoint(x:65, y:61))
            path.addQuadCurve(to: CGPoint(x:43, y:106), control: CGPoint(x:49, y:80))
        } //trianR
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct LeftEyeView: View {
    var body: some View {
        Eye().stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).offset(x: -115, y: 0)
    }
}

struct EyeView: View {
    var body: some View {
        Eye().fill(Color.white).rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0)).offset(x: -115, y: 0)
    }
}
