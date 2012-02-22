Feature: Convert times

  Scenario Outline: Convert times to words.
    Given I am on the root page
    When I type "<time>" to the time field
    And I press the "Show me!" button
    Then I should see "<result>"

    Examples:
      | time | result |
      | 0:00 | It's midnight. |
      | 1:00 | It's one o'clock at night. |
      | 2:00 | It's two o'clock at night. |
      | 3:00 | It's three o'clock at night. |
      | 4:00 | It's four o'clock at night. |
      | 5:00 | It's five o'clock at night. |
      | 6:00 | It's six o'clock in the morning. |
      | 7:00 | It's seven o'clock in the morning. |
      | 8:00 | It's eight o'clock in the morning. |
      | 9:00 | It's nine o'clock in the morning. |
      | 10:00 | It's ten o'clock in the morning. |
      | 11:00 | It's eleven o'clock in the morning. |
      | 12:00 | It's noon. |
      | 13:00 | It's one o'clock in the afternoon. |
      | 14:00 | It's two o'clock in the afternoon. |
      | 15:00 | It's three o'clock in the afternoon. |
      | 16:00 | It's four o'clock in the afternoon. |
      | 17:00 | It's five o'clock in the afternoon. |
      | 18:00 | It's six o'clock in the evening. |
      | 19:00 | It's seven o'clock in the evening. |
      | 20:00 | It's eight o'clock in the evening. |
      | 21:00 | It's nine o'clock at night. |
      | 22:00 | It's ten o'clock at night. |
      | 23:00 | It's eleven o'clock at night. |