# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Team 5: Amanda Migliori, Cynthia Morales

## Summary
We have learned the ways of One Hot and Binary encodings. Neat fact, we didn't learn this in class yet or at all. I like One Hot a lot more than Binary. It is simpler and nicer. It did not require half an hour of debugging only to find out we messed up the truth table by a singular 1. We did make our lives difficult by having to reverse our binary states because we labelled them in what I liked to refer as the birth order. A was the youngest child and C was the oldest.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One Hot encodings uses one DFF per state while Binary encodings use DFF to represent the number of states. One Hot is simpler to implement but does require more resources.

### Which method did your team find easier, and why?
One Hot encoding by a significant amount. It's so much simpler to implement and understand. There is barely any truth table shenanigans like Binary encoding.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
A big condition would be how much resources are available. One Hot takes up more resources the more states there are, while Binary encoding takes significantly less (glory be to log(n)).
