//
//  ToDoItemView.swift
//  CursoMVVCSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//

import SwiftUI

public struct ToDoItemView: View {
    
    
    public var body: some View {
        
        
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment:.top, spacing: 4) {
                    Text(Date(), format: .dateTime.day())
                        .font(.system(size: 44, weight: .semibold))
                        .padding(.top, -8)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(Date(), format: .dateTime.month())
                            .fontWeight(.semibold)
                        Text(Date(), format: .dateTime.weekday(.abbreviated))
                            .fontWeight(.semibold)
                    }
                    .padding(.top, -2)
                    Spacer(minLength: 2)
                    
                    
                }
                VStack(alignment: .leading) {
                    Text("")
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(2)
                    
                    
                }
                Spacer(minLength: 8)
                HStack(spacing: 4){
                    Text("Hora:")
                    Text(Date(), format: .dateTime.hour().minute())
                        .fontWeight(.thin)
                }
            }
            .padding()
            .background(Color.indigo)
            .clipShape(.rect(cornerRadius: 10))
        
    }
    
}

#Preview {

}
