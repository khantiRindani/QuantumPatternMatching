Course Project of Quantum Computing which made it to IBM-Q awards. 

## Problem Statement:

We are modeling String Pattern matching problem in quantum world.

String Pattern Matching is a classical world problem where we need to find occurences of the pattern in a given string.
> There are two variants of it explained by below examples:
>
> 1. Exact Matching: \
>      String: collar \
>      Pattern: olla \
>      Answer: `olla` is matched at index 1 of the original string
> 2. Closest Matching: \
>      String: collar \
>      Pattern: ola \
>      Answer: There is no exact substring match but substring `ol` and `la` have closest pattern matching

The quantum version is used in genme sequence with each charcter matching a protein alias with sequence forming like `RHT`

Here, for the scope of this problem, we are using binary symbols. So, our sequences will look like:
String: 1110
Pattern: 10

## Approach:

1. Initialization with state super-position
2. Mark the exact pattern “p” through the Oracle
3. Grover Search to find out matching q-bits
5. Amplitude Amplification to increase probability of likely result
6. Measurement
7. Results

<img width="1106" alt="Screenshot 2024-01-05 at 9 51 32 AM" src="https://github.com/khantiRindani/QuantumPatternMatching/assets/36477517/1ede7a9a-2c7d-4d73-872a-1910b6e41211">

## Solution:

We can build orcale as black-box to tackle any pattern or custom made for a specific pattern and use it against all the incoming strings.

The codes written as solution are here: [link](/Code)

## Demo and Tutorial:
[link](/IBM-Q%20Awards/QPM_QiskitTutorial.mp4)
