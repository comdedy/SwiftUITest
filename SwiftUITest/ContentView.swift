//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 吴坤 on 2024/9/21.
//

import SwiftUI
import MapKit
struct ContentView: View {
    var body: some View {
        VStack {
  
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            ExtractedView()
            MapView()
                .frame(height: 300)

//            CircleImage()
//                .offset(y:-100)
//                .padding(.bottom,-130)
            List{
                Text("ss")
                Text("111")
                Text("ss")
                Text("111")
                Text("ss")
                Text("111")
            }
        }
        .padding(EdgeInsets())
    }
}
#Preview {
    ContentView()
}

struct ExtractedView: View {
    var body: some View {
        Group {
            Text("Hello, world!")
                .font(.title2)
                .foregroundColor(.green)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct CircleImage : View  {
    var body: some View{
        Image("img")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.red, lineWidth: 1.0)
            }
            .shadow(radius: 7)

    }
   
}

struct MapView : View {
    var body: some View{
//        Text("地图")
        Map(initialPosition: .region(region))
    }
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 30.001126, longitude: 120.1666), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}


