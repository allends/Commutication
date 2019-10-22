//
//  destForm.swift
//  Commutication
//
//  Created by Allen Davis-Swing on 10/22/19.
//  Copyright © 2019 Allen Davis-Swing. All rights reserved.
//

import SwiftUI

struct destForm: View {
    var body: some View {
        Form {
            Text("Name")
            Text("Time")
            Text("Location")
        }
    }
}

struct destForm_Previews: PreviewProvider {
    static var previews: some View {
        destForm()
    }
}
