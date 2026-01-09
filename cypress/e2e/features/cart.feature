Feature: Add to cart

  Scenario Outline: Add a product and verify cart info
    Given I open the product "<path>"
    When I add the product to the cart
    When I go to the cart
    Then the cart should show the product name "<expectedName>"
    And the cart should show the unit price <expectedPrice>
    #Dấu "" để truyền vào string, nếu chỉ có <> thì sẽ hiểu là biến (placeholder)/số(int)

    Examples:
      | path                         | expectedName                 | expectedPrice |
      | /chung-ta-song-de-buoc-tiep  | Chúng Ta Sống Để Bước Tiếp   | 72000         |
      | /me-cung-do-ipm              | Mê Cung Đỏ                   | 90000         |
      | /lam-giau-qua-chung-khoan    | Làm Giàu Qua Chứng Khoán     | 148500        |
      | /day-con-kieu-nhat           | Dạy con kiểu nhật            | 80100         |
      | /ban-co-lon-159k             | Bàn Cờ Lớn                   | 127200        |



