Feature: Write a review

  Scenario Outline: Wrire a review with different cases
    Given I visit the review page "<url>"
    When I enter information "<fullname>", "<email>", "<comment>"
    And I click the submit button
    Then I check the results "<expected>"

  Examples:
    | url                                                                                           | fullname         | email                  | comment                   | expected |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than |                  | hkn582004@gmail.com    | Sách vô cùng ý nghĩa!     | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  |                        | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004@gmail.com    |                           | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | @gmail.com             | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004              | Sách vô cùng ý nghĩa!     | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004@@gmail.com   | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004gmail.com     | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004@gmail..com   | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004@gmailcom     | Bài viết hay!             | fail     |
    | https://ebookstore.com.vn/review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than | Hoàng Kiều Ngân  | hkn582004.gmail@com    | Bài viết hay!             | fail     |