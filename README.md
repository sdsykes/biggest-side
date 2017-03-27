# Wundernut 6 solution

## Stephen Sykes

This is a Ruby solution.

When run, the program produces the following result:

    $ ruby wundernut6.rb 
    Biggest side 201 units
    Area: 40401 units^2

### Solution description

This is a straightforward algorithm, with an important optimisation.

The program iterates over the dataset looking for a square height bigger than the biggest one already found.

For each height to be tested (going from current best to height of the current column), the program will look ahead the same number of column positions, and set a new best height if all those columns have a higher height.

Each column is similarly treated in turn.

Although this algorithm will find the correct answer, the performance can be better. So there is an optimisation made such that as soon as we fail a test (so the height of a column is less than the height we are testing), then we immediately stop testing the current column, and set the current column to be the one immediately after the one that caused the test to fail.

This works because there cannot be any improved height starting with any column after the current one and before the failed one (or on the failed one itself).

The solution runs in around 50mS on my machine.

### Tests

Run test.rb.

    $ ruby test.rb 
    Run options: --seed 57866

    # Running:

    ......

    Finished in 0.001543s, 3888.5288 runs/s, 3888.5288 assertions/s.

    6 runs, 6 assertions, 0 failures, 0 errors, 0 skips

### Thanks

Thanks to Wunderdog once again for [the puzzle](https://github.com/wunderdogsw/wunderpahkina-vol6)!
