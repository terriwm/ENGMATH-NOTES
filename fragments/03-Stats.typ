= Statistics
== Types of Data
#grid(
  [
Qualitative
- Nominal - Unordered
- Ordinal - Ordered
    
  ], [
Quantitative
- Discrete - Counts
- Continous - Measures
    
  ],
  columns: (1fr, 1fr)
)

== Probability
A number between 0 and 1, that describes how likely an event is to happen

If probability of an even t is $p$ then the probability of that even not happening is $1-p$

== Frequency
Favourite ice cream flavours:

C, S, C, C, V, V, S, C, M

#table(
  [Chocolate],[4],
  [Strawberry],[2],
  [Vanilla],[2],
  [Mint],[1],
  [Total],[9],
  columns: (1fr, 1fr)
)
_Put into bar graph (write numbers into bars)_

^ For Discrete data

For Continous data:

Break into "bins" e.g. $10 < X <= 15$, Then produce a frequency table, and graph with histogram (the bars must touch)


== Averages
When mean > mode, Right Skew. mean < mode, Left Skew
=== Mean
Arithmatic Mean:
$ overline(X) = (sum X)/n $
Sometimes can't be possible, e.g mean goals in a game 3.4 is not possible. Not great, susceptible to outliars.

=== Median
The middle value of the ordered set of values.
If there is no middle (e.g. even number of values) you take the mean of the 2 middle values

Is not as susceptible to outliars, good way at assessing real world situations, and for skewed data.

=== Mode
Most common value.

Can be useful but its often not. Can be multiple Modes, does tell you the nature of the data, e.g. "bimodal" if there are 2 modes.

== Variability
Average doesn't always give the full story
\ Range: biggest - smallest \
Range can be easily thrown off by outliar data \
IQR = Q3 - Q1 \
Q1 is the median of the first half \
Q3 is the median of the second half \ 

=== Box and Whisker plot
Take 5 number summary:\
min, Q1, median, Q3, max \
Draw a line where these values are on a number line\
Draw a box between Q1 & Q3
#image("../imgs/whisker plot.png")

== Standard Deviation
$ sigma = sqrt((Sigma (x_i - mu)^2)/N) $
Variance is $sigma^2$\
Larger variance = the data is more varied\


== Normal Distribution
$mu$ Defines where the middle of the bell is\
$sigma$ Defines how wide/narrow the bell is\
#image("../imgs/normal dsitrubution.png")