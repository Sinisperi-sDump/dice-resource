# dice-resource

> Dice for all your Godot needs

## count

Integer for how many die should this dice have

## sides

Integer for how many sides die have

## roll()

Rolls dice `count` times
Returns `_Roll` class that has:
- `rolls` a list of all individual rolls
- `total` a total sum of all the rolls
- `average` an average of all the rolls

## Example

```gdscript
# Creating Dice that has 4 die with 6 sides
var d := Dice.new(4, 6)

# Rolling dice
var r := d.roll()

# Printing results
print(r.rolls)
print("Total: %s" % r.total)
print("Average: %s" % r.average)
```
Results
```gdscript
[1, 1, 3, 6]
```
```gdscript
Total: 11
```
```gdscript
Average: 2.75
```
