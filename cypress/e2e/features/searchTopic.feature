Feature: Search by category on homepage

  Scenario Outline: User selects a category from homepage
    Given I am on the homepage
    When I click on the "<category>" category
    Then I should be redirected to "<url>"

    Examples:
      | category                    | url                                    |
      | Danh mục nổi bật            | /collections/all                       |
      | Sản phẩm mới                | /van-hoc-nuoc-ngoai-1                  |
      | Sản phẩm nổi bật            | /nhan-vat-bai-hoc-kinh-doanh           |
      | Sản phẩm theo đối tượng     | /collections/all                       |
      | Tủ sách nổi bật             | /collections/all                       |