Feature: user manipulates with category of wishes
  As a user
  So that I can manipulate with categories of wishes
  I want to create, update and delete category

  Scenario: user creates a new category
    Given I am on the Categories page
    When I fill in category_noun with Books
    And I fill in category_verb with read
    And I click on Bring to life button
    Then I should see Category was successfully created
    And I should see Books I would wish to read
