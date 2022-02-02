---- ghci aka glasgow haskell compiler interactive ----
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

---- Haskell ----
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

---- Ranges ----
-- Ranges ar a way to make lists that can be enumerated (counted off in order)
-- Numbers and the alphabet can both be enumerated
oneToTwenty = [1..20]
alphabet = ['a'..'z']
alphabetUpper = ['A'..'Z']

-- A step can be added to change the interval between items. Separate the first two items with a comma, add .., then specify upper limit
-- Can only specify a single step 
countByTwo = [2,4..20]
countByThree = [3,6..20]
everyOtherLetter = ['a', 'c'..'z']

-- To make a descending list, you must use steps. Otherwise it will increment instead of decrement and end up as an empty list
-- This works:
decWithSteps = [20,19..1]
-- This returns an empty list: 
decWithoutSteps  = [20..1]

-- Get a certain number of multiples of something
twentyFourMultiplesOfThirteen = [13,26..24*13]
-- Better way to get a certain number of items, using infinite list
twentyFourMultiplesOfThirteenInfiniteList = take 24 [13,26..]

-- Cycle over items to replicate elements. Cycles indefinitely by default so be sure to cut it somewhere
cycleList = take 10 (cycle [1,2,3])
cycleWords = take 100 (cycle "honk ")

-- Repeat takes an element and produces infinite list of that element. Like cycling but with one element. 
repeatList = take 50 (repeat(5))
repeatLetter = take 20 (repeat('h'))

-- Replicate is another way to create a list composed of single item. Takes the length of the list and item to replicate
replicateList = replicate 20 100
replicateLetter = replicate 10 "hey"

-- Be careful about suing floating-point numbers in ranges because they can have strange results and overshoot upper limit due to their precision
-- For example: 
floatingRange = [0.1,0.3..1]

---- List Comprehensions ----
-- List comprehensions are a way to filter, transform, and combine lists

-- Syntax: First section is the operation we do on the list. After pipe is the variable that we are binding to. Finally, the initial list we are pulling from
doubleAllListElems =  [x * 2 | x <- [1..10]]
squareEach = [ x * x | x <- [1..100]]

-- List comprehension with condition (aka predicate)
-- Condition is added after the rest of the comprehension with a comma
-- All elements that, after being tripled, are less than or equal to 100
conditionalComp = [x * 3 | x <- [1..100], x * 3 <= 100]
-- All numbers from 50 to 100 whose remainder when divided by 7 is 3: 
modulusComp = [ x | x <- [50..100], x `mod` 7 == 3]

-- Replace every odd number greater than 10 with 'Bang' and every odd number less than 10 wih Boom. 
-- Add predicate to a separate function for simplicity: 
bangBoom xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Multiple conditions can be added
multipleConditions = [ x | x <- [10..20], x/= 13, x/=15, x/=19]

-- Multiple lists can be drawn from. This list comprehension adds all combinations of both lists
addBothLists = [x+y|x<-[1,2,3], y<-[100,200,300]]

-- This list comprehension multiplies all combinations of both lists, and returns products that are over 50
multiplyBothLists = [x*y|x<-[2,5,10], y<-[8,10,100], x*y > 50]

-- Make our own length function
-- Underscore is used as a temporary variable 
length' xs = sum [1 | _ <- xs]

-- removeNonUppercase
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Pass in lists of lists
xxs = [[1,3,5,2,3,1,2,4,3], [1,2,3,4,5,6,7,8,9], [1,2,4,2,1,6,3,1,3,2,3,6]]
removeOddsFromListsInLists = [[x | x <- xs , even x] | xs <- xxs]

---- Tuples ----
-- Tuples are used to store several heterogeneous elements as a single value
-- Tuples have a fixed size, which needs to be known ahead of time
tupleOne = (1,3)
tupleTwo = (3,'a', "hello")
tupleThree = (50, 50.4, "hello", 'b')

-- Tuples are useful for representing certain types of data like vectors:
workingVectorList = [(1,2), (8,11), (4,5)]
-- The below will throw an error because 'doubles' and triples' considered different data types
-- errorVectorList = [(1,2),(8,11,5),(4,5)]

-- Haskell also considers tuples with the same length but different data types to be distinct types of tuples. 
-- This will also throw an error:
-- errorTuple = [(1,2),("One",2)]

-- Tuples can represent a wide variety of data
personTuple = ("Tucker", "Triggs", 29)

-- Size of a tuple is treated as part of its type
-- Because of this there is no general function to append to a tuple

-- Tuples can be compared (like lists), but tuples of different sizes cannot be compared (unlike lists)

-- Functions for tuple pairs:
-- fst takes a pair and returns its first component
first = fst (8, 11)
-- snd takes a pair and returns its second component
second = snd (8, 11)

-- zip function takes two lists and 'zips' them into one list by joining matching elements into pairs
zippedTuples = zip [1,2,3,4,5] [6,7,8,9,10]
zippedTuples2 = zip [1..5] ["one", "two", "three", "four", "five"]
-- If lengths don't match, zip will simply ignore the rest of the longer list
zippedIgnoreExtra = zip [5,3,2,6,2,7,2,5,4,6,6] ["I'm", "a", "turtle"]
zippedIgnoreExtraInfinite = zip [1..] ["apple", "orange", "cherry", "mango"]

-- Finding a right triangle
-- Generate all possible triples with elements less than or equal to 10
triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]
-- Filter triples that don't represent right triangles with predicate to check against pythaogrean theorem
rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]






