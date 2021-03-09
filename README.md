I work for a company that builds digitial audio workstations (DAW) plugins
musicians use our filters - to change how track sounds

Band pass filter
min frequency 40
max frequency 1000
musicians customise min and max
filter can take 44,100 frequencies in under 100 ms

EXAMPLE
method: band_pass_filter()
3 arguments
array - sound wave (composed of frequencies)
min frequency - integer
max frequency - integer
[10, 40, 110, 11100], 40, 1000    =>    [40, 40, 110, 1000]


INPUT                             |         OUTPUT
[40, 40, 110, 1000], 40, 1000    =>    [40, 40, 110, 1000] - no change to frequency
[10, 40, 110, 1000], 40, 1000    =>    [40, 40, 110, 1000] - 1 change up to min frequency
[40, 40, 110, 1100], 40, 1000    =>    [40, 40, 110, 1000] - 1 change down to max frequency
[10, 40, 110, 1100], 40, 1000    =>    [40, 40, 110, 1000] - 1 change up to min frequency & 1 change down to max frequency
[40, 40, 110, 1000], 50, 600    =>     [50, 50, 110, 600] - frequencies changed to musicians customised frequencies
