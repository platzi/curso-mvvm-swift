//
//  ToDoPreviewView.swift
//  CursoMVVMSwift
//

import SwiftUI

struct ToDoPreviewView: View {



    var body: some View {


        ZStack(alignment: .bottom) {
        Rectangle()
            .fill(.thinMaterial)
        .ignoresSafeArea()
        .onTapGesture {


        }
        VStack(spacing: 36) {
        HStack {
            VStack(alignment: .leading) {
            Text(Date(),
                format: .dateTime
                .weekday(.wide)
            .day()
            .month()
            .year()
            .hour()
            .minute())

            Text("")
                .font(.title3)
            .fontWeight(.semibold)
        }
            Spacer()
        }



        HStack(spacing: 16) {
        Button {


        } label: {
            Text("Editar")
                .frame(maxWidth: .infinity)
            .font(.headline)
            .foregroundStyle(Color.primary)
            .padding(.vertical, 8)
            .padding(.horizontal, 32)
            .overlay {
            Capsule(style: .circular)
            .stroke(Color.primary, lineWidth: 1)
        }
        }
        Spacer()
        Button {



        } label: {
            Text("Archivar")
                .frame(maxWidth: .infinity)
            .font(.headline)
            .foregroundStyle(Color.primary)
            .padding(.vertical, 8)
            .padding(.horizontal, 32)
            .overlay {
            Capsule(style: .circular)
            .stroke(Color.primary, lineWidth: 1)
        }
        }
    }
    }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.indigo)
        .clipShape(.rect(cornerRadius: 10))
        .padding(8)
    }
        .frame(maxWidth: UIScreen.main.bounds.width)
        .frame(maxHeight: UIScreen.main.bounds.height)
        .zIndex(2)
        .overlay {


        }



    }
}
