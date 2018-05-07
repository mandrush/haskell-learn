-- whichDay - for a given day of the week, which is also the first day of the
--            month, and for a given date, determines which weekday this date is

data Day = Mon|Tue|Wed|Thu|Fri|Sat|Sun deriving Show

whichDay weekday date =
    case weekday of Mon -> listOfDays !! (date `mod` 7 - 1)
                    Tue -> listOfDays !! (date `mod` 7)
                    Wed -> listOfDays !! (date `mod` 7 + 1)
                    Thu -> listOfDays !! (date `mod` 7 + 2)
                    Fri -> listOfDays !! (date `mod` 7 + 3)
                    Sat -> listOfDays !! (date `mod` 7 - 3)
                    Sun -> listOfDays !! (date `mod` 7 - 2)
    where
        listOfDays :: [Day]
        listOfDays = [Mon, Tue, Wed, Thu, Fri, Sat, Sun]
