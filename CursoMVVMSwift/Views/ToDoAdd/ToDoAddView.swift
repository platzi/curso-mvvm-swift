//
//  ToDoAddView.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoAddView: View {
    
    public var todo: ToDoEntity? = nil
    @EnvironmentObject var viewModel: ToDoViewModel

    @Binding var showed: Bool
    
    @State private var title = ""
    @State private var note = ""
    @State private var date = Date()
    
    var isSaveDisable: Bool {
        !viewModel.validateInput(ofText: title)
    }
    
    private let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startDate = Date.now
        let endDate = calendar.date(
            byAdding: .year,
            value: 10,
            to: startDate
        ) ?? startDate
        
        return startDate...endDate
    }()
    
    public var body: some View {
        VStack(spacing: 16) {
            ToDoTextInput(
                "Ingrese nombre de la tarea",
                text: $title,
                label: "Tarea"
            )
            ToDoTextInput(
                "(Opcional) Escriba una descripción de la tarea",
                text: $note,
                label: "Nota",
                variant: .textEditor
            )
            DatePicker(
                selection: $date,
                in: dateRange
            ) {
                Text("Fecha y hora")
                    .font(.title3)
            }
            .tint(Color.primary)
            .padding(.vertical, 8)
            
            Spacer()
            Button {
                if let todo = todo {
                    viewModel.updateToDo(
                        todo,
                        withNewTitle: title,
                        note: note,
                        date: date)
                } else {
                    viewModel.addToDo(
                        withTitle: title,
                        note: note,
                        date: date
                    )
                }
                showed.toggle()
            } label: {
                Text("Guardar".uppercased())
                    .font(.headline)
                    .tint(Color.primary)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isSaveDisable ?
                        Color(UIColor.systemGray5): Color.teal)
                    .clipShape(.rect(cornerRadius: 10))
            }
            .disabled(isSaveDisable)
        }
        .onAppear {
            if let todo = todo {
                title = todo.title
                note = todo.note ?? ""
                date = todo.date
            }
        }
    }
    
}

#Preview {
    NavigationView {
        ToDoAddView(
            showed: .constant(true)
        )
        .background(Color(UIColor.secondarySystemBackground))
        .environmentObject(ToDoViewModel())
    }
}
