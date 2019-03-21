Feature: Add and Edit Categories
  As a blog administrator
  In order to help people find/understand my blog
  I want to be able to add categories to my blog and edit the existing ones

  Background:
    Given the blog is set up
    And I am logged into the admin panel

 Scenario: Successfully add category
    Given I am on the new categories page
    When I fill in "category_name" with "First"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Category was successfully saved"
    And I should see "First"

  Scenario: Successfully edit category
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Category was successfully saved"
    Given I am on the new categories page
    When I follow "Foobar" "edit"
    Then I should see "Categories"
    When I fill in "category_name" with "Foobar_edit"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Category was successfully saved"
    And I should see "Foobar_edit"
    
Scenario: 