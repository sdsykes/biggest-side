# Wundernut 6 solution

## Stephen Sykes

This is a Ruby solution.

When run, the program produces the following result:

    $ ruby wundernut6.rb 
    Biggest side 201 units
    Area: 40401 units^2

### Solution description

This is a fast algorithm - a straightforward design with some important optimisations.

The program iterates over the dataset looking for a square height bigger than the biggest one already found.

As it iterates through each column, it will look ahead as far as it can to find the biggest square that starts in the current column.

If a column is encountered that is lower than the current best size, then we immediately skip to the next column after the low column. This is an important optimisation.

And if the search from the current column ends because the size cannot be increased any more because of a smaller column somewhere in the ones already checked, then the search will restart immediately after this limiting column. This is the purpose of the _smallest_ variable, to store the size that cannot, from the current column, be exceeded.

The solution is fast and completes after executing only 10173 inner loops (considering there are 10000 columns).

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
