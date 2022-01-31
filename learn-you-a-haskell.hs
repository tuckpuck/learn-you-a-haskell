------ ghci aka glasgow haskell compiler interactive ----
-- Open Haskell compiler
-- gchi

-- Open this file in gchi compiler
-- ghci learn-you-a-haskell.hs

-- Open a program in ghci compiler
-- ghci src/lib.hs

-- Load a file when already in the ghci compiler 
-- :l hello.hs

-- Reload Haskell compiler
-- :r

-- Quit gchi
-- :q or :quit

-- if defining a variable in ghci, use let before (ex let a = 1)

------ Haskell ----
-- Haskell is purely functional programming language. In functional programming you tell computer what stuff is as opposed to what to do. -- Functions have no side effects. The only thing they can do is calculate something and return a result.
-- Haskell is lazy. This means it won't execute functions unless it needs to show result. 
-- Haskell is statically typed. Compiler knows data type of different items in code, allowing errors to be caught at compile time.
-- Haskell uses type inference, which allows it to figure out which data is which type. 
-- Haskell is elegant and concise, with programs usually shorter than imperative equivalent. Easy to maintain and less bugs.

------ Logic ----
-- && - Boolean and
-- || - Boolean or 
-- not - negate 
-- True
-- False
-- == - equal
-- /= - not equal

---- Number Functions ----
-- succ - successor function, takes a parameter and returns the next number up
findSuccessor = succ 10
-- min - takes 2 parameters, returns the smaller one
findMinimum = min 111 222
-- max - takes 2 parameters, returns the larger one
findMaximum = max 111 222
-- div - takes two integers and executes an integral division. Returns how many times the first number can be divided by the second one
divisionMod = 92 `div` 10
-- Use standard divide operator to get a fractional return
divisionExact = 92 /  10

-- A prefix function can be changed to an infix function with ``
-- prefixFunc a b
-- a `infixFunc` b

-- If using a negative number, surround it in parenthesis 
-- (-3)

-- Operations will take place in the order of the precedence of operations (PEMDAS). 
-- Use parenthesis to define order of operations. 
-- Functions have the highest precedence of all operations in Haskell.

---- Function Definitions ----

-- Function name is followed by parameters separated by spaces. After parameters is = operator, followed by function body.
-- Functions can't begin with capital letters
doubleMe x = x + x
doubleTen = doubleMe 10
-- Takes two numbers, multiplies them by 2, and adds them together
doubleUs x y = x * 2 + y * 2
doubleTenTen = doubleUs 10 10 
-- Functions that you defiine can also call eachother. The above function could be redefined as:
doubleUsAgain x y = doubleMe x + doubleMe y

-- Multiplies a number by 2 if that number is less than 100. 
-- If must have else in haskell because every function must return a value in declarative languages
doubleSmallNumber x = if x > 100 then x else x * 2
-- Apostraphe denotes a strict version (not lazy), or a slightly modified version of a function with a similar name
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- A definition or name takes no parameters and cannot be changed once set
myName = "Tucker Triggs" 

---- Lists ----
-- Lists are homogenous data structures, store several items of the same data type

-- List syntax
numList = [1,2,4,5,6,8]

-- Concatenating lists
-- ++ operator always takes two lists
catList = [1,2,3,4,5] ++ [6,7,8,9,10]
catList2 = [1,2,3] ++ [4]

-- In Haskell, strings are just lists of characters. So list functions can be used on strings.

-- Cons operator is used to add something to beginning of list
-- Much faster than adding to end of big list (because Haskell then has to go through entire list)
-- First argument always a single item of same type
conListLetter = 'A':" Small Cat"
conListNum = 5:[1,2,3,4,5,6]

-- Use !! operator to get element of a list by index
index = "Tucker Triggs" !! 8 
indexNumList = [1,2,3,4,5,6,7] !! 3

-- Lists in lists
-- Lists in lists also have to be of a single type
listInList = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
-- Add another list within a list to end
listInListConcat = listInList ++ [[13,14,15,16]]
-- Add another list within a list to beginning
listInListCons = [6,6,6] : listInList
--  Find an element in list in list
listInListElem = listInList !! 2

-- Comparing lists
-- First two items are compared. If equal, the second two are. And so on. Other options are <=, >=, >, <. Nonempty lists is always considered greater than an empty one. 
comp1 = [3,2,1]>[2,1,0] -- True
comp2 = [3,2,1]>[2,10,100] -- True
comp3 = [3,4,2]<[3,4,3] -- True
comp4 = [3,4,2]>[2,4] -- True
comp5 = [3,4,2]==[3,4,2] -- True

-- List slicing functions
-- Head function takes a list and returns its first element
getHead = head [1,2,3,4,5,6]
-- Tail takes a list and returns everything but the first element
getTail = tail [1,2,3,4,5,6]
-- Last returns a list's last element
getLast = last [1,2,3,4,5,6]
-- Init returns everything but the last element
getInit = init [1,2,3,4,5,6]
-- If you try to run an above slicing function on an empty list it will throw error, but it is not caught at compile time

-- Take takes a given number of elements from a list into a new list
take3 = take 3 [5,7,2,5,8,7,4]
-- Drop drops a given number of elements in a list and returns the rest
drop3 = drop 3 [5,7,2,5,8,7,4]

-- null function checks if a list is empty. If it is, it returns True, otherwise it returns False
isListNull = null [1,2,3]
isEmptyListNull = null []


-- Other List functions
-- Length function returns length of list
getLength = length [1,2,3]

-- Reverse reverses a list
revList = reverse [1,2,3,4,5]

-- Maximum finds the largest element in a list
findMax = maximum [1,3,6,2,7,8]
-- Minimum finds the smallest element in a list
findMin = minimum [1,3,6,2,7,8]

-- Sum takes a list of numbers and returns their sum
findSum = sum [1,2,3,4,5,6,7,8,9,10]

-- Product takes a list of numbers and returns their product
findProduct = product [1,2,3,4,5,6,7,8,9,10]

-- Elem takes an item and a list of items and tells if that item is an element of the list. Usually done as infix.
inList = 4 `elem` [3,4,5,6]
notInList = 10 `elem` [3,4,5,6]