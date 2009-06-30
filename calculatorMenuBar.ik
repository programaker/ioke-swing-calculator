import(:java:awt:event, 
    :KeyEvent,
    :ActionEvent
)

import(:javax:swing, 
    :JMenu, 
    :JMenuItem,
    :KeyStroke,
    :JMenuBar,
    :JOptionPane
)

use("fonts")

exitMenuItem = JMenuItem new("Exit") do(
    font = font012
    accelerator = KeyStroke getKeyStroke(KeyEvent field:VK_X, ActionEvent field:CTRL_MASK)
)

aboutMenuItem = JMenuItem new("About") do(
    font = font012
)

fileMenu = JMenu new("File") do(
    font = font112
    mnemonic = KeyEvent field:VK_F
    add(exitMenuItem)
)

helpMenu = JMenu new("Help") do(
    font = font112
    mnemonic = KeyEvent field:VK_H
    add(aboutMenuItem)
)

;; do() didn't work here =(
calculatorMenuBar = JMenuBar new
calculatorMenuBar add(fileMenu)
calculatorMenuBar add(helpMenu)

