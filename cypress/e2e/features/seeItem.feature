Feature: Product detail page - Bậc thầy đọc vị
  Verify the product information is displayed correctly

  Background:
    Given I am on the product page "/bac-thay-doc-vi"

  Scenario Outline: Verify product information
    Then I should see the <field> as "<expected>"

    Examples:
      | field        | expected        |
      | name         | Bậc thầy đọc vị |
      | brand        | Az Books        |
      | stock        | Còn hàng        |
      | code         | 8935325026522   |
      | type         | SÁCH            |

