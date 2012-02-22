Feature: Main site
  Scenario: See the main site.
    When I open "http://localhost:3000/"
    Then I should see "Convert time to english words"
