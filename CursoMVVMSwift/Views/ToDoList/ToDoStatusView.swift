//
//  ToDoStatusView.swift
//  CursoMVVMSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//

import SwiftUI

public struct ToDoStatusView: View {
    
    
    public let disabled: Bool
    
    public init(
        
        
        disabled: Bool = false
    ) {
        
        
        self.disabled = disabled
    }
    
    public var body: some View {
       
        
        return Image("checkmark.circle.fill")
    }
    
}

#Preview {
   
}
