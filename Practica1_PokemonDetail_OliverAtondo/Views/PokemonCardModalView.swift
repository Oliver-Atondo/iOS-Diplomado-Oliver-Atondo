//
//  PokemonCardModalView.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 02/03/25.
//

import SwiftUI

struct PokemonCardModalView: View {
    
    var name: String
    var points: Int
    var ability: String
    var abilityDescription: String
    var image: String
    var type: String
    var weakness: String
    var movement: String
    var movementDescription: String
    
    var onDismiss: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.backward")
                    .resizable(resizingMode: .stretch)
                    .frame(width: 30, height: 30)
                Text("Back")
                    .font(.title2)
                    .padding(.leading, 10)
                Spacer()
            }
            .foregroundColor(.gray)
            .padding(.horizontal, 30)
            .background { Color.clear }
            .onTapGesture {
                onDismiss()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 0.974, green: 0.87, blue: 0.39))
                    .shadow(radius: 5)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("CardBackground"))
                    .padding(20)
                
                VStack(alignment: .leading) {
                    HStack(alignment: .bottom) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color.gray, lineWidth: 4)
                                .fill(Color(red: 0.942, green: 0.946, blue: 0.946))
                                .frame(width: 60, height: 20)
                            
                            Text("BASIC")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, -12)
                        
                        Text(name)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("PS")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("\(points)")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "star.circle")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 30, height: 30)
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 8)
                    
                    Image(type == "Water" ? "Water" : "Ground")
                        .resizable()
                        .scaledToFit()
                        .border(Color.gray, width: 2)
                        .padding(.horizontal, 8)
                        .overlay {
                            Image(image)
                                .resizable()
                                .scaledToFit()
                        }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        HStack {
                            
                            Rectangle()
                                .fill(Color(red: 0.593, green: 0.0, blue: 0.0))
                                .frame(width: 60, height: 20)
                                .overlay {
                                    Text("Ability")
                                        .fontWeight(.semibold)
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }
                            
                            Text(ability)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("Titles"))
                        }
                        
                        Text(abilityDescription)
                            .font(.footnote)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 4)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        HStack {
                            
                            Image(systemName: "star.circle")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 40)
                            
                            Text(movement)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("Titles"))
                        }
                        
                        Text(movementDescription)
                            .font(.footnote)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 4)
                    
                    HStack {
                        Rectangle()
                            .fill(Color(type))
                            .frame(width: 60, height: 20)
                            .overlay {
                                Text("Type")
                                    .fontWeight(.semibold)
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                        
                        Text(type)
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 8)
                    .padding(.top, 4)
                    
                    Spacer()
                    
                    HStack(alignment: .top) {
                        HStack {
                            Text("Weakness:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding(.leading, 8)
                            Text(weakness)
                                .font(.footnote)
                            Spacer()
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color.gray, lineWidth: 4)
                                .fill(Color(red: 0.942, green: 0.946, blue: 0.946))
                                .frame(width: .infinity, height: 20)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Resistance:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding(.leading, 8)
                            Spacer()
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color.gray, lineWidth: 4)
                                .fill(Color(red: 0.942, green: 0.946, blue: 0.946))
                                .frame(width: .infinity, height: 20)
                        }
                    }
                    .foregroundColor(Color.black)
                    .padding(.leading, -8)
                    .padding(.trailing, -8)
                    .padding(.bottom, 8)
                    
                    HStack(alignment: .top) {
                        HStack {
                            Image(systemName: "star.circle")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 20, height: 20)
                                .padding(.leading, 8)
                            
                            Image(systemName: "star.circle")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 20, height: 20)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "star.circle")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 20, height: 20)
                                .padding(.leading, 8)
                            
                            Image(systemName: "star.circle")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 20, height: 20)
                            Spacer()
                        }
                    }
                    .padding(.bottom, 32)
                }
                .padding(20)
            }
            .frame(width: .infinity, height: .infinity)
            .padding(16)
            .background { Color.clear }
        }
        .foregroundColor(Color("CommonText"))
        .background { Color.clear }
    }
    
}
