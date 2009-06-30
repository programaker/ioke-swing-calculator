use("calculatorMenuBar")

exitMenuItem addActionListener(fn(event, 
    java:lang:System exit(0)
))

aboutMenuItem addActionListener(fn(event, 
    JOptionPane showMessageDialog(nil, "Ioke Swing Calculator - Exploring Ioke's Java integration!")
))
