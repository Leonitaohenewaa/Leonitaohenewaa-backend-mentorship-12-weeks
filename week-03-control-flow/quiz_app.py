# Week 3 Assignment: Command-Line Quiz App
# Purpose: Practice conditions (if/elif/else),
#           loops (for) and functions.

#  FUNCTION 1: ask a single question and check the answer
def ask_question(question, correct_answer):
    """Ask the question, check the answer, and return 1 (correct) or 0 (wrong)."""
    user_answer = input(question + " ")

    # if/elif/else: compare the user's answer to the correct answer
    # .lower() makes the check case-insensitive (e.g. "Accra" == "accra")
    if user_answer.lower() == correct_answer.lower():
        print("Correct!")
        return 1
    else:
        print(f"Incorrect. The correct answer was: {correct_answer}")
        return 0

#  FUNCTION 2: print the final score and a message based on it


def show_final_score(name, score, total_questions):
    """Print the final score and a message that depends on the score range."""
    print()
    print("Quiz complete!")
    print(f"{name}, your score is {score}/{total_questions}.")

    # if/elif/else: respond differently depending on the score range
    if score == total_questions:
        print("Excellent work! Perfect score.")
    elif score >= 3:
        print("Good effort. Keep practicing.")
    else:
        print("Review the material and try again.")


#  WELCOME MESSAGE
print("Welcome to the Python Basics Quiz!")
print("Answer each question, then check your score at the end.")
print()

# ASK FOR THE USER'S NAME
name = input("What is your name? ")
score = 0

#  LIST OF QUESTIONS: each item is a (question, answer) pair
questions = [
    ("What is the capital of Ghana?", "Accra"),
    ("What is  2+ 3?", "5"),
    ("Which keyword is used to define a function in Python?", "def"),
    ("What data type is used for True or False?", "boolean"),
    ("Which loop can repeat through a list?", "for"),
]

print()

#  LOOP: ask every question without repeating the same code
for question, answer in questions:
    score += ask_question(question, answer)

# SHOW THE FINAL RESULT
show_final_score(name, score, len(questions))
