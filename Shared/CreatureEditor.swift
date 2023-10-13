//
//  CreatureEditor.swift
//  JustSample
//
//  Created by Паша on 13.10.23.
//

import SwiftUI

struct CreatureEditor: View {
    @State var newCreature : Creature = Creature(name: "", emoji: "")
    @EnvironmentObject var data : CreatureZoo
    var body: some View {
        Form {
            Section("Name") {
                TextField("Name", text: $newCreature.name)
            }
            
            Section("Emoji") {
                TextField("Emoji", text: $newCreature.emoji)
            }
            
            Section("Creature Preview") {
                CreatureRow(creature: newCreature)
            }
        }
        .toolbar {
            ToolbarItem {
                Button("Add") {
                    data.creatures.append(newCreature)
                }
            }
        }
    }
}

struct CreatureEditor_Previews: PreviewProvider {
    static var previews: some View {
        CreatureEditor()
    }
}
