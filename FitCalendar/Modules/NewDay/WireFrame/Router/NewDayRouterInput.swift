//
//  NewDayRouterInput.swift
//  FitCalendar
//
//  Created by Магомедов Рамазан on 28.11.2019.
//  Copyright © 2019 Магомедов Рамазан. All rights reserved.
//

protocol NewDayRouterInput {
    func exerciseInfoModule(items: [KeyValue], title: String)
    func openActiveExerciseModule(with primaryKey: String)
}
