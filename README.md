# rand
print random number or select random line from input.

# Design evaluation
currently the usage of `rand` is still undecided and might change soon.

1.	Read from `stdin`

		rand # read lines from stdin
		rand args... # print random argument from args

	Can't print random number without any bounds.

2.	Print random number

		rand # print random number
		rand files... # print random word from files, separated by IFS

	with `rand -` this implementation can do everything that 1. can.

