//
//  ComputerStepState.swift
//  XO-game
//
//  Created by Denis Vlaskin on 18.06.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import Foundation

public class ComputerStepState: PlayerInputState {
    
    override init(player: Player, markViewPrototype: MarkView, gameViewController: GameViewController, gameboard: Gameboard, gameboardView: GameboardView) {
        super.init ( player: player, markViewPrototype: markViewPrototype, gameViewController: gameViewController, gameboard: gameboard, gameboardView: gameboardView )
    }
    
    public override func begin() {
        super.begin ()

        guard let gameboard = gameboard else { return }
            
        var col: Int
        var row: Int
        repeat {
            col = Int(arc4random_uniform(UInt32(GameboardSize.columns)))
            row = Int(arc4random_uniform(UInt32(GameboardSize.rows)))
        } while ( !gameboard.isFree ( at: GameboardPosition ( column: col, row: row )))
        let position = GameboardPosition ( column: col, row: row )
        addMark(at: position)
    }
}
