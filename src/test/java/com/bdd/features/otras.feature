Feature: API de prueba

  Background:
    Given url urlBase
    * def body = read('classpath:com/bdd/req/body_addEmployee.json')
    * def bodyUpdate = read('classpath:com/bdd/req/body_updateEmployee.json')

  @GetAll
  Scenario: Get All Employees
    Given path '/employees'
    When method get
    Then status 200

  @Get1
  Scenario: Get All Employees
    Given path '/employee/1'
    When method get
    Then status 200

  @Add
  Scenario: Create A record
    Given path '/create'
    And request body
    When method post
    Then status 200

  @UpdateID
  Scenario: Update A record
    Given path '/update/8805'
    And request bodyUpdate
    When method put
    Then status 200

  @DeleteID
  Scenario: Delete Data
    Given path '/delete/719'
    When method delete
    Then status 200