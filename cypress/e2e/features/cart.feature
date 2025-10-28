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
      | /canh-chim-bi-thuong         | Cánh Chim Bị Thương          | 107100        |
      | /lam-giau-qua-chung-khoan    | Làm Giàu Qua Chứng Khoán     | 148500        |
      | /chu-roi-nho                 | Chú Rối Nhỏ                  | 125100        |
      | /ban-co-lon-159k             | Bàn Cờ Lớn                   | 127200        |



