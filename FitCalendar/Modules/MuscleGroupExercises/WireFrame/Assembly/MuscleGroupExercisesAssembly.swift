//
//  MuscleGroupExercisesAssembly.swift
//  FitCalendar
//
//  Created by Магомедов Рамазан on 11.12.2019.
//  Copyright © 2019 Магомедов Рамазан. All rights reserved.
//

import UIKit

final class MuscleGroupExercisesAssembly {
    static func assembly(model: MuscleGroupModel) -> UIViewController {
        let vc = MuscleGroupExercisesVC()
        let coreFactory = CompositionFactory.shared.core
        let presenter = MuscleGroupExercisesPresenter(muscleGroup: model, coreService: coreFactory)
        
        vc.presenter = presenter
        presenter.view = vc
        
        return vc
    }
}
