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

If a column is encountered that is lower than the current best size, then we immediately skip to the next column after the low column.

And if the search ends because the size cannot be increased any more because of an earlier limiting column, then the search will restart
immediately after this limiting column.

The solution runs in around 50mS on my machine, but most of this is Ruby startup time - the algorithm itself takes a few milliseconds to run.

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
