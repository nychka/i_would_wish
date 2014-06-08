Feature: user manipulates with wishes
  As a user
  So that I can malipulates with wishes
  I want to create, update and delete wishes

  Scenario: user adds a wish to category
    Given I am on the Books I would like to read category
    When I fill in wish_title with Games of Thrones
    And I select wish_start with 07/06/14
    And I select wish_finish with 27/06/14
    And I click on Submit
    Then I should see A wish was added
    And I should see Games of Thrones