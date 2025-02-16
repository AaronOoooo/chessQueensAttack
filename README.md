# Chess Queen Attack Checker

This Ruby program checks whether two queens placed on a standard 8x8 chessboard can attack each other. In chess, a queen can attack any piece in the same row, column, or diagonal.

---

## **How to Run the Program**

### **Prerequisites:**
- Ruby installed on your machine.
- Ruby added to your system's PATH.

### **Steps to Run:**
1. Open a terminal or command prompt.
2. Navigate to the directory containing `chessqueen.rb`.
3. Run the program using the following command:

   ruby chessqueen.rb <position1> <position2>

   **Example:**
   ruby chessqueen.rb a1 h8

   This checks if a queen at position `a1` can attack another queen at position `h8`.

---

## **Program Logic**

- The program accepts two positions in standard chess notation (e.g., `a1` to `h8`).
- It checks for validity and converts the positions into board coordinates.
- It verifies if the queens share:
  - The same row,
  - The same column,
  - Or the same diagonal.
- Outputs whether the queens can attack each other or not.

---

## **File Structure**

.
│
├── chessqueen.rb       # Ruby program for the Queen's Attack problem
├── README.md           # Documentation for the project
└── test_cases.txt      # Optional file containing test cases

---

## **Test Cases**

Below are the test cases you can use to verify the program’s correctness:

# Test Case 1: Same Row
a1 a8
Expected: Queens cannot attack each other.

# Test Case 2: Same Column
a1 h1
Expected: Queens can attack each other.

# Test Case 3: Same Diagonal (Positive Slope)
a1 h8
Expected: Queens can attack each other.

# Test Case 4: Same Diagonal (Negative Slope)
h1 a8
Expected: Queens can attack each other.

# Test Case 5: Random Positions (No Attack)
b2 g5
Expected: Queens cannot attack each other.

# Test Case 6: Adjacent Positions (Attack)
d4 d5
Expected: Queens can attack each other.

# Test Case 7: Edge of the Board (Attack)
a8 h8
Expected: Queens can attack each other.

# Test Case 8: Center of the Board (Attack on Diagonal)
d4 f6
Expected: Queens can attack each other.

---

## **Notes:**
- Input positions must be in valid chess notation (e.g., a1 to h8).
- If invalid input is provided, the program will notify the user.
- Works on both Windows and Unix-based systems.

---

## **Future Enhancements (Optional)**
- Implement a graphical interface to visualize the board.
- Extend to other chess pieces.
- Add automated unit tests.

---

### **Author:**
AaronOoooo
