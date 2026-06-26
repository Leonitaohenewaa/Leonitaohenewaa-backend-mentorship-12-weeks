# Week 3: Command-Line Quiz App

This project is a python quiz app that asks questions, checks answers,
tracks the score and prints a final result.

## What it does

The program welcomes the user, asks for their name, then asks 5
questions one at a time. After each answer it tells the user whether
they were right or wrong, and at the end it prints their total score
along with a message based on how well they did.

## How to Run

python quiz_app.py

You will be asked for your name, then prompted to answer 5 questions
in the terminal.

## Concepts Used

- Conditions: `if/elif/else` inside `ask_question()` checks whether
  the answer is correct, and inside `show_final_score()` picks a
  message based on the score range (perfect score, good effort, or
  needs review).
- Loops: a `for` loop goes through the `questions` list and asks
  every question without copying the same code 5 times.
- Functions: `ask_question()` asks one question and returns 1 or 0,
  and `show_final_score()` prints the final score and message. Both
  are reused instead of repeating logic.

## Reflection

One thing that felt easy: 
I found user input and variables to understand. The starter code provided also made the assignment easier to follow

One thing that felt confusing: 
I could not figure out at first why ask_question() used return instead of just print. It made sense once I realized return is what actually sends the score back so it can be counted.








