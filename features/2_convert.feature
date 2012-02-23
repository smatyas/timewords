Feature: Convert times

  Scenario Outline: Convert times to words.
    Given I am on the root page
    When I type "<time>" to the time field
    And I press the "Show me!" button
    Then I should see "<result>"

  Examples:
    | time    | result                                     |
    | 0:00    | It's midnight.                             |
    | 1:00    | It's one o'clock at night.                 |
    | 2:00    | It's two o'clock at night.                 |
    | 3:00    | It's three o'clock at night.               |
    | 4:00    | It's four o'clock at night.                |
    | 5:00    | It's five o'clock at night.                |
    | 6:00    | It's six o'clock in the morning.           |
    | 7:00    | It's seven o'clock in the morning.         |
    | 8:00    | It's eight o'clock in the morning.         |
    | 9:00    | It's nine o'clock in the morning.          |
    | 10:00   | It's ten o'clock in the morning.           |
    | 11:00   | It's eleven o'clock in the morning.        |
    | 12:00   | It's noon.                                 |
    | 13:00   | It's one o'clock in the afternoon.         |
    | 14:00   | It's two o'clock in the afternoon.         |
    | 15:00   | It's three o'clock in the afternoon.       |
    | 16:00   | It's four o'clock in the afternoon.        |
    | 17:00   | It's five o'clock in the afternoon.        |
    | 18:00   | It's six o'clock in the evening.           |
    | 19:00   | It's seven o'clock in the evening.         |
    | 20:00   | It's eight o'clock in the evening.         |
    | 21:00   | It's nine o'clock at night.                |
    | 22:00   | It's ten o'clock at night.                 |
    | 23:00   | It's eleven o'clock at night.              |
    | 24:00   | It's midnight.                             |
    | 0:30    | It's half past midnight.                   |
    | 0:31    | It's twenty-nine to one at night.          |
    | 0:46    | It's fourteen to one at night.             |
    | 1:15    | It's quarter past one at night.            |
    | 2:18    | It's eighteen past two at night.           |
    | 2:32    | It's twenty-eight to three at night.       |
    | 5:15    | It's quarter past five at night.           |
    | 5:25    | It's twenty-five past five at night.       |
    | 5:30    | It's half past five at night.              |
    | 5:44    | It's sixteen to six at night.              |
    | 5:45    | It's quarter to six at night.              |
    | 5:58    | It's two to six at night.                  |
    | 6:01    | It's one past six in the morning.          |
    | 8:45    | It's quarter to nine in the morning.       |
    | 10:19   | It's nineteen past ten in the morning.     |
    | 11:30   | It's half past eleven in the morning.      |
    | 11:45   | It's quarter to noon.                      |
    | 11:35   | It's twenty-five to noon.                  |
    | 12:03   | It's three past noon.                      |
    | 12:15   | It's quarter past noon.                    |
    | 12:30   | It's half past noon.                       |
    | 12:39   | It's twenty-one to one in the afternoon.   |
    | 12:51   | It's nine to one in the afternoon.         |
    | 17:45   | It's quarter to six in the afternoon.      |
    | 17:53   | It's seven to six in the afternoon.        |
    | 18:02   | It's two past six in the evening.          |
    | 18:15   | It's quarter past six in the evening.      |
    | 18:33   | It's twenty-seven to seven in the evening. |
    | 19:26   | It's twenty-six past seven in the evening. |
    | 20:45   | It's quarter to nine in the evening.       |
    | 21:15   | It's quarter past nine at night.           |
    | 21:22   | It's twenty-two past nine at night.        |
    | 22:23   | It's twenty-three past ten at night.       |
    | 23:36   | It's twenty-four to midnight.              |
    | 23:43   | It's seventeen to midnight.                |
    | asdf    | Error: invalid date.                       |
    | 123:123 | Error: invalid date.                       |
    | 24:01   | Error: invalid date.                       |
    | 25:15   | Error: invalid date.                       |
    | 34:65   | Error: invalid date.                       |
    | 12:78   | Error: invalid date.                       |