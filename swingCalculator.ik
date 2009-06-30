import java:awt:BorderLayout
import javax:swing:JFrame

use("calculatorMenuBar")
use("calculatorDisplay")
use("calculatorButtons")
use("menuEvents")
use("buttonEvents")

JFrame new do(
    jMenuBar = calculatorMenuBar
    
    contentPane do(
        add(calculatorDisplay, BorderLayout field:NORTH)
        add(calculatorButtons, BorderLayout field:SOUTH)
    )
    
    requestFocus
    title = "Ioke swing calculator"
    defaultCloseOperation = field:EXIT_ON_CLOSE
    setSize(241, 217)
    pack
    setLocation(400, 250)
    resizable = false
    visible = true
)
