import math, sequtils, strutils

proc calc_fuel(mass: int): int =
  max(0, int(mass / 3) - 2)

proc calc_total_fuel(mass: int): int =
  var to_lift = mass

  while to_lift > 0:
    let fuel = calc_fuel(to_lift)
    result += fuel
    to_lift = fuel

var masses = newSeq[int]()
for line in lines "input":
  masses.add(parseInt(line))

let fuels = masses.mapIt(calc_total_fuel(it))
echo sum(fuels)
