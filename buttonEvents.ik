use("calculatorButtons")
use("buttonEventMacros")

buttons numericButtons each( 
    addActionListener(displayChangeButtonEvent(
        if(displayText == "0", displayText = ""),
        displayText + buttonText
    ))
)

buttons operatorButtons each(
    addActionListener(displayChangeButtonEvent(., "#{displayText} #{buttonText} "))
)

buttons["Backspace"] addActionListener(displayChangeButtonEvent(
    displayText = displayText[0..-2] trim,
    if(displayText empty?, "0", displayText)
))

buttons clearButtons each(addActionListener(displayChangeButtonEvent(., "0")))
buttons["="] addActionListener(resultEvaluationButtonEvent(displayValue))
buttons["%"] addActionListener(resultEvaluationButtonEvent(displayValue / 100))
buttons["+/-"] addActionListener(resultEvaluationButtonEvent(displayValue negation))
buttons["1/x"] addActionListener(resultEvaluationButtonEvent(1 / displayValue))

buttons["sqrt"] addActionListener(resultEvaluationButtonEvent(
    java:lang:Math sqrt(java:lang:Double new(displayValue * 1.0))
))


