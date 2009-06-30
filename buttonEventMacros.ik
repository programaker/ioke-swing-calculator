use("calculatorButtons")
use("calculatorDisplay")

getDisplayTextCode = ''(displayText = internal:createText(calculatorDisplay text))
getButtonTextCode = ''(buttonText = internal:createText(event source text))
setCalculatorDisplayCode = dsyntax([code] ''(calculatorDisplay text = (`code) asText))

displayChangeButtonEvent = dsyntax(
    [initCode, code]
    
    ''(fn(event,
        'getDisplayTextCode
        'getButtonTextCode
        'initCode
        setCalculatorDisplayCode('code)
    ))
)

resultEvaluationButtonEvent = dsyntax(
    [code]
    
    ''(fn(event,
        'getDisplayTextCode
        displayValue = Message fromText(displayText) evaluateOn(Ground, Ground)
        setCalculatorDisplayCode('code)
    ))
)
