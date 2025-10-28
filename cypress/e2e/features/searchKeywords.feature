Feature: Search product

  Scenario: Search with exact keyword (có sản phẩm)
    Given I am on the search page
    When I search for "Tiếng Gọi Chân Trời"
    Then I should see product results

  Scenario: Search with all lowercase keywords (có sản phẩm)
    Given I am on the search page
    When I search for "tiếng gọi chân trời"
    Then I should see product results

  Scenario: Search with all uppercase keywords (có sản phẩm)
    Given I am on the search page
    When I search for "TIẾNG GỌI CHÂN TRỜI"
    Then I should see product results

  Scenario: Search with mixed case keywords (có sản phẩm)
    Given I am on the search page
    When I search for "TIếNG GỌi cHÂn trỜI"
    Then I should see product results   

  Scenario: Search with unaccented keywords (có sản phẩm)
    Given I am on the search page
    When I search for "tieng goi chan troi"
    Then I should see product results 

  Scenario: Search with misspelled keywords (không có sản phẩm)
    Given I am on the search page
    When I search for "Tiếng ngọi trân chời"
    Then I should see no search results

  Scenario: Search with non-existent keyword (không có sản phẩm)
    Given I am on the search page
    When I search for "abcxyz"
    Then I should see no search results

  Scenario: Search with keywords containing numbers (không có sản phẩm)
    Given I am on the search page
    When I search for "abcxyz123"
    Then I should see no search results

  Scenario: Search with keywords containing special characters (không có sản phẩm)
    Given I am on the search page
    When I search for "abcxyz!@#"
    Then I should see no search results

