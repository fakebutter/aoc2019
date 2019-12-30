import math, sequtils, strutils

var masses = newSeq[int]()
for line in lines "input":
  masses.add(parseInt(line))

let fuels = masses.mapIt(int(it / 3) - 2)
echo sum(fuels)
