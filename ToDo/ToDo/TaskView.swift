//
//  TaskView.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import SwiftUI

struct TaskView: View {
    @Environment(\.dismiss) var dismiss

    
    @State var name = ""
    let onAdd: (Task) -> Void
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Name", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding()
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        let task = Task(id: UUID(), name: name)
                        onAdd(task)
                        dismiss()

                        
                    } label: {
                        Image(systemName: "checkmark")
                    }

                }
            }
        }
    }
}

#Preview {
    TaskView { _ in
        
    }
}
