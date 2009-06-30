import(:java:awt,
    :Color,
    :GridLayout,
    :BorderLayout
)

import(:javax:swing,
    :JButton,
    :JPanel
)

use("fonts")

;; prototypes in action \m/
buttons = {} do(
    addButton = method(title, color,
        button = JButton new(title)
        button font = font012
        button foreground = color
        [title] = button
    )
    
    numericButtons = method(
        filter(first =~ #/[0-9]$|\./) collect(second)
    )
    
    operatorButtons = method(
        filter(first in?(list("/", "*", "-", "+"))) collect(second)
    )
    
    clearButtons = method(
        list(["C"], ["CE"])
    )
)

;; numeric buttons
(0..9) each(number, buttons addButton(number asText, Color field:blue))

;; operator buttons
["+/-", ".", "=", "/", "*", "-", "+", "sqrt", "1/x", "%"] each(text, buttons addButton(text, Color field:red))

;; other buttons
["Backspace", "CE", "C"] each(text, buttons addButton(text, Color field:red))

backspacePanel = JPanel new do(
    layout = GridLayout new(1, 1, 2, 2)
    add(buttons["Backspace"])
)

controlPanel = JPanel new do(
    layout = GridLayout new(1, 2, 2 ,2)
    add(buttons["CE"])
    add(buttons["C"])
)

buttonPanel = JPanel new do(
    layout = GridLayout new(4, 5, 2, 2)
    
    add(buttons["7"]) 
    add(buttons["8"])
    add(buttons["9"])
    add(buttons["/"])
    add(buttons["sqrt"])
        
    add(buttons["4"])
    add(buttons["5"])  
    add(buttons["6"])
    add(buttons["*"])
    add(buttons["1/x"])
        
    add(buttons["1"])
    add(buttons["2"])
    add(buttons["3"])
    add(buttons["-"])
    add(buttons["%"])
        
    add(buttons["0"])
    add(buttons["+/-"])
    add(buttons["."])
    add(buttons["+"])
    add(buttons["="])
)

calculatorButtons = JPanel new do(
    layout = BorderLayout new
    add(backspacePanel, BorderLayout field:WEST)
    add(controlPanel, BorderLayout field:EAST)
    add(buttonPanel, BorderLayout field:SOUTH)
)
