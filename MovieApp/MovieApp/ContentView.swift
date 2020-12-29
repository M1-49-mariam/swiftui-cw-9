//
//  ContentView.swift
//  MovieApp
//
//  Created by Mariam2 on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    var body: some View {
      
        List {
            
            MovieRow(movieName: "Aladdin", movieCharacters: ["A", "B", "C"])
            
            MovieRow(movieName: "Coco", movieCharacters: ["A", "B", "C"])
            
            MovieRow(movieName: "Avatar", movieCharacters: ["A", "B", "C"])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MovieRow: View {
    
    let movieName: String
    let movieCharacters: [String]
    
    
    var body: some View {
        
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
        {
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 100.0, height: 100.0)
             
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
            VStack (alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(movieCharacters .joined(separator: ", "))
            }
            
            
        }
        
    }
    
    
}
