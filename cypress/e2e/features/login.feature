Feature: Login 

  Scenario Outline: Login with multiple email and password 
    Given I open the login page
    When I enter email "<email>" and password "<password>" 
    Then I should be redirected to "<expectedUrl>"
    #Dấu "" để truyền vào string, nếu chỉ có <> thì sẽ hiểu là biến (placeholder)/số(int)
    Examples:
      | email                  | password         | expectedUrl       |
      | hkn582004@gmail.com    | ngandei58        | /account          |
      | hkn582004@gmail.com    | ngan582004       | /account/login    |
      | noteist@gmail.com      | ngandei58        | /account/login    |
      |                        | ngandei58        | /account/login    |
      | hkn582004@gmail.com    |                  | /account/login    |
      | hkn582004@@gmail.com   | ngandei58        | /account/login    |
      | hkn582004gmail.com     | ngandei58        | /account/login    |
      | hkn582004@gmail..com   | ngandei58        | /account/login    |
      | hkn582004@gmailcom     | ngandei58        | /account/login    |
      | hkn582004.gmail@com    | ngandei58        | /account/login    |
      | hkn582004              | ngandei58        | /account/login    |
      | @gmail.com             | ngandei58        | /account/login    |
      | hkn582004@gmail.com    | ngan             | /account/login    |
      | hkn582004@gmail.com    | ngandei58aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa        | /account/login        |

