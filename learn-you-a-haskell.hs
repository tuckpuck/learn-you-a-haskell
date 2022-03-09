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

----- Logic ----
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

---- Type System ----
-- Every expression's type is known at compile time. If there are types that don't work, the program won't compile
-- Haskell has type inference, so you don't need to explicitly tell Haskell what everything is. 

-- :t command is used to tell what type something is
-- :t 'a' returns Char
-- :t True returns Bool
-- :t "HELLO!" returns [Char]
-- :t (True, 'a') returns (Bool, Char)
-- :t 4 == 5 returns Bool 

-- The :: operator is read as "has type of"
-- A single character is Char, and a string of multiple characters is [Char], denoting a list of characters

-- Functions also have types, and can be given an explicit type declaration
-- Similar letter filter function from above rewritten with type declaration:
removeNonLowercase :: [Char] -> [Char]
removeNonLowercase st = [ c | c <- st, c `elem` ['a'..'z']] 

-- Adding type declarations for multiple inputs:
-- (params are separated by ->, with return always coming last)
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Haskell Types: 
-- Int - integer, used for whole numbers. Bounded, so it has a minimum value and a maximum value. Those depend on your computer's CPU
-- Integer - Also used for integers. Unbounded, so it is used for really big numbers. Less efficient than Int
-- Float - Floating point number, used for numbers with decimals
-- Double - Floating point number with double the precision of Float (uses twice as many bits). More memory intensive than float. 
-- Bool - Boolean. Either True or False
-- Char - Represents a unicode character. Denoted by single quotes
-- Tuple - Takes on the types of their components. 
-- () - An empty Tuple is its own type of ()

-- Type variables:
-- If a function works on multiple types, it will use type variables rather than explicit defined types
-- To see an example type ':t head', which returns 'head :: [a] -> a' because the type function works on any type of list (numbers, letters, etc.)
-- Functions that use type variables are called polymorphic functions
-- fst returns the first item in a pair. ':t fst' will return 'fst :: (a,b) -> a'. This will throw error if given param is not a tuple pair

-- Type classes
-- A type class specifies a bunch of functions. When we make a type an instance of a type class, we define what those functions mean for that type
-- Everything before the => symbol is called a class constraint, defines which types of values are allowed
-- Eq type class is used for equality testing. 
-- Ord is a type class whose values can be put in some order
-- Compare function takes two values whose type is an Ord instance and returns an ordering. 
compare1 = "Abrakadabra" `compare` "Zebra"
compare2 = 5 `compare` 2
compare3 = "Abrakadabra" < "Zebra"
compare4 = 5 >= 3

-- Values whose types are instances of the Show type class can be represented as strings. 
-- Show function prints the given value as string
show3 = show 3
showFloat = show 5.334 
showBool = show True

-- Read type class is the opposite of true. 
-- read function takes a string and return sa value whose type is an instance of read
readBool = read "True" || False
readNum = read "8.2" + 3.8
readTheList = read "[1,2,3,4]" ++ [3]
readBoolList = [read "True", False, True, False]
-- read needs a second value to know what to convert to. read "4" will throw an error because it can't infer what type is wanted
-- String and [Char] are interchangable

-- Type annotations 
-- Type annotations explicitly tell Haskell what the type of an expression should be. This is done by adding :: to the end of an expression
readInt = read "5" :: Int
readFloat = read "5" :: Float
readExpression = (read "5" :: Float) * 4
readListTypeAnno = read "[1,2,3,4]" :: [Int]
readTuple = read "(3, 'a')" :: (Int, Char)

-- Enum type class is for sequentially ordered types. Used to list ranges. Have defined successors and predecessors
-- Examples of types with this class are Bool, Char, Ordering, Int, Integer, Float, and Double
aToE = ['a'..'e']
lessToGreater = [LT .. GT]
threeToFive = [3..5]
afterB = succ 'B'

-- Bounded type class 
-- Have upper and lower bound, which can be check by using the minBound and maxBound functions
minInt = minBound :: Int
maxChar = maxBound :: Char
maxBool = maxBound :: Bool
minBool = minBound :: Bool

-- Num type class
-- Numeric type class. Polymorphic, can act like any type that's an instance of Num (Int, Integer, Float, or Double)
twenInt = 20 :: Int
twenInteger = 20 :: Integer
twenFloat = 20 :: Float
twenDouble = 20 :: Double

-- Floating type class
-- Includes Float and Double types. Examples of Floating functions are sin, cos, sqrt

-- Integral type class
-- Numeric type class that includes only whole numbers, including Int and Integer types.
-- A useful function to convert Integral numbers into more general is fromIntegral
-- add length to floats: 
lengthPlusFloats = fromIntegral (length [1,2,3,4]) + 3.2 + 7.3

-- All type classes: Eq, Ord, Show, Read, Enum, Bounded, Num, Integral, Floating. Can also make custom type classes
-- One type can be an instance of many type classes. One type class can be an instance of many types. 


----- Function Syntax ----
-- Pattern matching 
-- You can create separate function bodies to pattern match on functions
-- if any lowercase letter (x, y, or myNumber) is used, it will act as a catchall pattern. Must be the last item. Should always add catchall or could hit errors.
lucky :: Int -> String
lucky 7 = "Lucky number 7"
lucky x = "Sorry, you're out of luck pal"

-- Factorial function with recursion and pattern matching
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Catchall with char param
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Barry"
charName 'c' = "Cecil"
charName x = "Other letter"

-- Pattern matching using tuples 
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Create functions to get certain values from triples
firstItem :: (a,b,c) -> a
firstItem (x,_,_) = x

secondItem :: (a,b,c) -> b
secondItem (_,y,_) = y

thirdItem :: (a,b,c) -> c
thirdItem (_,_,z) = z

-- Pattern matching in list comprehensions
xs = [(2,3),(4,6),(9,5),(6,3)]
sumListValues = [a+b | (a,b) <- xs]

-- A common pattern in haskell is x:xs, where x is the head and xs is the rest of the list. Useful in recursion. 

-- Find head using pattern matching
findHead :: [a] -> a
findHead [] = error "Can't call on an empty list"
findHead (x:_) = x 
-- Must surround pattern match in parenthesis because there are multiple variables (even including _)
-- Error function takes a string and generates a runtime error. It essentially crashes the program so be careful. 

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element, " ++ show x
tell (x:y:[]) = "The list has two elements, " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are " ++ show x ++ " and " ++ show y
-- (x:[]) and (x:y:[]) is the same as [x] and [x,y]. (x:y:_) matches any list of 2 or more.

-- Function that only handles lists of three elements
addListOfThree :: (Num a) => [a] -> a
addListOfThree (a:b:c:[]) = a + b + c

-- As patterns
-- As pattern allows you to reference a pattern without always typing the full pattern. Written with an @
-- Ex. by writing xs@(x:y:ys) pattern, we can then reference it with xs
firstLetter :: String -> String
firstLetter "" = "Empty String, can't compute"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- Guards
-- Guards are used check if a property that was passed is true or false. Make the most sense when you have multiple conditions. If a condition evaluates to True then it will execute. T
bmiTell :: Double -> String
bmiTell bm
    | bm <= 18.5 = "You are underweight"
    | bm <= 25.0 = "Looking good"
    | bm <= 30.0 = "You are overweight"
    | otherwise = "You're obese"
-- Otherwise catches anything. If there is no otherwise and 

-- modify bmi function to make calculation
bmiTell' :: Double -> Double -> String
bmiTell' weight height 
    | weight / height ^ 2 <= 18.5 = "You are underweight"
    | weight / height ^ 2 <= 25.0 = "Looking good"
    | weight / height ^ 2 <= 30.0 = "You are overweight"
    | otherwise = "You're obese"

-- Make a max function
max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a

-- Where keyword
-- Where keyword  is used to bind a value to a variable. Similar to storing in a variable in imperative languages
-- rewritten bmi function using where to store bmi expression: 
bmiTell'' :: Double -> Double -> String
bmiTell'' weight height 
    | bmi <= 18.5 = "You are underweight"
    | bmi <= 25.0 = "Looking good"
    | bmi <= 30.0 = "You are overweight"
    | otherwise = "You're obese"
    where bmi = weight / height ^ 2

-- All variables in a where statement should be aligned in a single column
-- Variables defined in where are visible only to that function. 
-- where bindings are not shared across function bodies of different functions. To use variables in this way, they should be defined globally: 
badGreeting :: String
badGreeting = "Oh! Pfft. It's you."

niceGreeting :: String
niceGreeting = "Hello! So very nice to see you"

greet :: String -> String 
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

-- Pattern matching with where
-- Can use where bindings to pattern match
initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName
-- This is a demo that pattern matching can happen in where statement (as in above function) or in the parameters themselves


-- Functions can also be used in where blocks
-- This function takes a list of weight/height pairs and returns list of bmis:
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

-- Let expressions 
-- Similar to where bindings. Let allows you to bind to variables anywhere and are expressions themselves. They don't span across guards. let can be used in pattern matching.
cylinder :: Double -> Double -> Double
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

-- let syntax: let <bindings> in <expression>
-- let is used before the expression, whereas where is used after
-- let is an expression and can be used inline (ex. 4 * (let a = 9 in a + 1) + 2
-- other uses include introducing functions at a local scope:
localLet = (let square x = x * x in [square 5, square 3, square 2])
-- Many can be declared with semicolons:
multiLet = (let a = 100; b = 200; c = 300 in a*b*c, let foo="hey"; bar=" there" in foo ++ bar)
-- useful to deconstruct tuple and bind components to names
dismantleTuple = (let (a,b,c) = (1,2,3) in a+b+c) * 100
-- can be used in list comprehensions

-- when not to use let: 
-- can't be used in guards (too local)
-- where can be more readable because function body is closer to its name and type declaration


-- let in list comprehensions 
calculateBmis :: [(Double, Double)] -> [Double]
calculateBmis xs = [bmi | (w,h) <- xs, let bmi = w/h ^ 2]
-- let expression binds w/h^2 to the name bmi
-- put let where we would use a predicate. But instead of filtering it binds values to names. Everything in the comprehension can access let
-- could re-write function to also include a filter: 
calculateBmis' :: [(Double, Double)] -> [Double]
calculateBmis' xs = [bmi | (w,h) <- xs, let bmi = w/h ^ 2, bmi > 25]
-- the <(w,h) <- xs> part of the function is known as a generator. Can't use let in a generator because it is defined prior to let binding

-- let in ghci
-- The 'in' part can be omitted in ghci. If no in is included, then names will be visible throughout entire interactive session. If 'in' is included then it will not be available after

-- case expressions 
-- case expressions allow you to execute blocks o code for specific values of a variable. Allow pattern matching almost anywhere in your code.
-- head function rewritten as a case:
head' :: [a] -> a
head' xs = case xs of 
    []    -> error "No head for empty lists"
    (x:_) -> x

-- case can be used to perform pattern matching in the middle of an expression
describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of 
    []   ->  "empty"
    [a]  ->  "a singleton"
    xs   ->  "a longer list"
-- xs is a catchall pattern here


-- A different way to do the above pattern matching, except using an inline function
describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where
        what [] = "empty."
        what [x] = "a singleton list."
        what xs = "a longer list."

---- Recursion ----
-- Recursion is a way of defining functions in which the function calls itself
-- Split a problem into smaller sub problems until we reach the base case (or base cases) which can't be broken down any further
-- Recursion is important in Haskell because we aren't telling the computer what to do, we are telling it how to do something


-- Maximum function can be recreated using recursion
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

-- Replicate function recreated using recursion
replicate' :: Int -> a -> [a]
replicate' n x 
    | n <= 0 = []
    | otherwise = x : replicate' (n-1) x

-- Take function using recursion
take' :: Int -> [a] -> [a]
take' 0 _        = []
take' _ []       = []
take' n (x:xs) = x : take' (n-1) xs

-- Reverse function using recursion
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Repeat function using recursion
repeat' :: a -> [a]
repeat' x = x:repeat' x

-- Zip function using recursion
zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

-- Elem function using recursion
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs) 
    | a == x = True 
    | otherwise = a `elem` xs

-- Quicksort function using recursion
-- Quicksort takes one item called the "pivot", and determines which are higher and lower than it. Higher and lower items will then be sorted recursively
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let itemsLessThanOrEqualToPivot = [a | a <- xs, a <= x]
        itemsGreaterThanPivot = [a | a <- xs, a > x]
    in quicksort itemsLessThanOrEqualToPivot ++ [x] ++ quicksort itemsGreaterThanPivot

---- Higher Order Functions ----
-- Functions in Haskell officially take only one parameter.
-- To add more parameters, use a curried function: when each parameter is called, it returns a function that takes on the next parameter. 
-- Calling a function with too few parameters is a partially applied function

-- Defining the initial function:
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z
-- Creating a function that uses the inital function, partially applied
multTwoItemsWithNine = multThree 9

-- Compare with 100
compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x
-- Rewrite compare with 100 as an higher order function
compareWithHundred' :: Int -> Ordering
compareWithHundred' = compare 100 


-- Infix functions and be partially applied using sections
-- To section an infix function, surround it with parenthesis and supply a parameter on only one side
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

-- Another infix example using elem to check if a character is uppercase
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])
-- One issue with sections is with negative numbers. Better to use (subtract 4) in this case because (-4) is interpreted as negative number.

-- Function that calls itself twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
-- parenthesis are necessary here b/c the first parameter is a function that takes one param and returns a value of the same type
applyTwiceNums = applyTwice (+3) 10
applyTwiceStrings = applyTwice (++ " HAHA") "Hey"
applyTwiceMult = applyTwice (*9) 9
applyTwiceList = applyTwice (3:) [1]

-- Zipwith function created with a higher order function
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

zipMult = zipWith' (*) [2,3] [5,7]
zipPlus = zipWith' (+) [2,3] [5,7]
zipMax = zipWith' max [6,3,4,2] [4,6,9,8]
zipString = zipWith' (++) ["hello ", "this "] ["is ", "example "]
zipRep = zipWith' (*) (replicate 5 2) [1..]
zipRecursive = zipWith' (zipWith' (*)) [[1,2,3], [4,5,6], [7,8,9]] [[10,11,12], [13,14,15], [16,17,18]]

-- Flip function (takes a function and returns a function but with the first two arguments flipped)
flip' :: (a -> b -> c) -> b -> a -> c
flip' f y x = f x y

normZip = zip [1,2,3,4,5] "hello"
flipZip = flip' zip [1,2,3,4,5] "hello"

-- Map function. Takes a function and a list and applies the function to every element in the list
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

mapPlus = map' (+10) [12,34,56] 
mapConcat = map' (++"!") ["HEY", "HIYO", "WHAT"]
mapReplicate = map' (replicate 3) [3..6]

-- Filter function. Takes a predicate (a function that returns a boolean) and a list. Sorts the list
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs) 
    | p x = x : filter' p xs
    | otherwise = filter' p xs

filterGreater = filter' (>9) [1,4,10,30]
filterEqual = filter' (==3) [1,2,3,4,5]
filterEven = filter' even [1..10]
filterLower = filter' (`elem` ['a'..'z']) "HeLlO WoRlD"

-- Find the largest number under 100,000 that's divisible by 3829
findDivisibleNum :: Integer
findDivisibleNum = head (filter p [99999, 99998..])
    where p x = x `mod` 3829 == 0
-- Because we use 'head' it will get the first numver and then stop due to Haskell's laziness

-- find the sum of all odd squares smaller than 10,000
-- We are using takeWhile, which takes a predicate and a list. It will return the list's elements as long as the predicate holds true 
sumOddSquares :: Integer
sumOddSquares = sum (takeWhile (<10000) (filter odd (map' (^2) [1..10000])))

-- Show all odd squares under 10000
showOddSquares :: [Int]
showOddSquares = takeWhile (<10000) (filter odd (map' (^2) [1..10000]))

-- Sum all odd squares under 10000 using list comprehensions
sumOddSquaresComp :: Int
sumOddSquaresComp = sum (takeWhile (<10000) [x^2 | x <- [1..10000], odd x])

-- Show all odd squares under 10000 using list comprehensions
showOddSquaresComp :: [Int]
showOddSquaresComp = takeWhile (<10000) [x^2 | x <- [1..10000], odd x]

-- Create a collatz sequence function. 
-- Rules of collatz sequence: Start with any natural number. If number is one, stop. If number is even, divide by 2. If number is odd, mulitply by 3 and add 1. Repeat until it reaches 1. 

chain :: Integer -> [Integer]
chain 1 = [1]
chain n 
    | even n = n:chain (n `div` 2)
    | odd n = n:chain (n*3 + 1)

-- For all starting numbers between 1 and 100, how many collatz chains have a length greater than 15?
numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15

-- Mapping functions with partial parameters
-- This can be used to create partial functions ready for the application of  one more param
mapMultiply = map (*) [1..10]
-- Get the item at index 5 (which is 6 in this case)
testMapMultiply = (mapMultiply !! 5) 5

-- Lambdas
-- Lambdas are anonymous functions that we use when we need a function only once
-- Usually used with the sole purpose of passing it to a higher order function
-- Lambdas are declared like so: (\ paramaters -> function body)
-- numLongChains (from above) rewritten using lambdas:
numLongChains' :: Int
numLongChains' = length (filter (\xs -> length xs > 15) (map chain [1..100]))
-- Lambdas are expressions can can be passed to functions 
-- These expressions are equivalent:
mapOne = map (+3) [1,6,3,2]
mapTwo = map (\x -> x + 3) [1,6,3,2]
-- Lambdas can take any number of parameters
zipLambda = zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [ 1,2,3,4,5]
-- It is also possible to pattern match using lambdas, but you can't define several patterns
-- If a pattern match fails it will trigger a runtime error
lambdaMatch = map (\(a,b) -> a + b) [(1,2), (3,5), (6,3), (2,6), (2,5)]

-- The two below functions are equivalent. The second one uses currying
-- When lambdas are not surrounded by parenthesis it assumes everything to the right of -> belongs to it
addThree' :: Int -> Int -> Int -> Int
addThree' x y z = x + y + z

addThree'' :: Int -> Int -> Int -> Int
addThree'' = \x -> \y -> \z -> x + y + z
-- The above function is just a gimmick to illustrate currying
-- The below example is a more useful example because it becomes more readable when defined with lambdas
flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f = \x y -> f y x
-- Lambdas can be used when making it explicit that your functions are meant to be partially applied then passed to other functions as a parameter



--Folds
--Folds encapsulate the common recursive pattern with base case and x:xs pattern
--Folds can be used to implement any function where you traverse a list once, element by element, and then return a single value
--Fold takes a binary function, starting value, and a list to fold up
--Lists can be folded from the left or right. 
-- Here is a left fold with foldl:
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs
sumTest = sum' [3,5,2,1]
-- A simpler way to write the above fold is like this:
sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0 

-- Right fold with foldr 
-- Same as left fold, except the accumulator goes from the right, and the parameters are reversed (current list value is first, accumulator is second)
-- Usually use right folds when building new lists from a list
-- Right folds work on infinite lists, but left folds don't 
-- Map function implemented with a right fold:
map'' :: (a -> b) -> [a] -> [b]
map'' f xs = foldr (\x acc -> f x : acc) [] xs
mapTest = map'' (+3) [1,2,3]

-- Implement elem function using foldr
elem'' :: (Eq a) => a -> [a] -> Bool
elem'' y ys = foldr (\x acc -> if x == y then True else acc) False ys
testElem1 = elem'' 1 [1,3,5]
testElem2 = elem'' 4 [1,3,6]
-- Remember that type of the accumulator and type of the end result are always the same with folds


-- foldl1 and foldr1 are the same as foldl and foldr, except you don't need to provide an explicit starting accumulator
-- They assume the first (or last) element to be the starting accumulator 
-- Will call a runtime error if called with empty lists. Foldl and foldr are fine with empty lists
-- Max can be implemented like this:
maximum'' :: (Ord a) => [a] -> a
maximum'' = foldl1 max
testMax = maximum'' [1,3,5,6,3,2,5,7,8,1,81,24]

-- Reverse written using folds:
reverse'' :: [a] -> [a]
reverse'' = foldl (\acc x -> x : acc) []
testReverse = reverse'' [1,2,3,4,5,6,7,8,9]
-- Another way to write this is:
reverse''' :: [a] -> [a]
reverse''' = foldl (flip(:)) []
testReverse2 = reverse''' [1,2,3,4,5,6,7,8,9]

-- Product written as a foldl
product' :: (Num a) => [a] -> a
product' = foldl (*) 1
testProduct = product' [2,5,10]

-- Filter written as a foldr
filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p = foldr (\x acc -> if p x then x:acc else acc) []
testFilter = filter'' (>10) [1,2,4,6,78,3,44,5]

-- Last written using foldl1
last' :: [a] -> a
last' = foldl1 (\_ x -> x)
testLast = last' [1,4,6,8,10]

-- Folds can also be used as successive application of some function to elements in a list
-- If function is (+) and the starting accumulator is 0, it essentially looks like this 3 + (4 + (5 + (6 + 0)))
-- Because of this, foldr can work fine on infinite lists. 
-- && Returns false if one or more elements is false, otherwise it returns true
-- This function will return cycle until it encounters an element that is false, in which case it returns False:
and' :: [Bool] -> Bool
and' xs = foldr (&&) True xs
testTrueAnd = and' [True, True]
testFalseAnd = and' [True, False, True]
-- Because Haskell is lazy, we can pass in an infinite list because it will terminate once it evaluates to false:
testInfinteFalseAnd = and' (repeat False)


-- Scans 
-- Scanl and scanr are like foldr and foldl, except that they report all intermediate accumulator states in the form of a list. 
-- There is alooso scanl1 and scanr1, which are analogous to foldl1 and foldr1
testScanl = scanl (+) 0 [3,5,2,1]
testScanr = scanr (+) 0 [3,5,2,1]
testScanl1 = scanl1 (\ acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,3,1]
testScanlFlip = scanl (flip(:)) [] [5,4,3,2,1]

-- Check how elements does it take for the sum of the square roots of all natural numbers to exceed 1000
sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1 
-- We use takeWhile here because it will cut off at 1000, whereas filter would continue because it doesn't know it is an ascending list


-- $ function
-- called the function application operator
-- $ has the lowest precedence, and is right associative. 
-- It's a convenience function that lets us write fewer parentheses.
-- These are the same:
sumWithParens = sum (map sqrt [1..130])
sumWithFAO = sum $ map sqrt [1..130]
-- These are also the same:
sqrtWithParens = sqrt (3 + 4 + 9)
sqrtWithFAO = sqrt $ 3 + 4 + 9
-- You can imagine $ being the opening parentheses, and then adding an invisible closing parentheses on the far right of the equation. 
-- This can also be rewritten using $:
functionWithParens = sum (filter (> 10) (map (*2) [2..10]))
functionWithFAO = sum $ filter (>10) (map (*2) [ 2..10])
-- Or even further reduced:
functionWithTwoFAOs = sum $ filter (>10) $ map (*2) [ 2..10]

-- $ can also be used to map function application over a list of functions:
applyUsingFAO = map ($ 3) [(4+), (10*), (^2), sqrt]
