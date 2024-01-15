Feature: API de tienda PetStore

  Background:
    Given url urlBase
    * def body = read('classpath:com/bdd/req/body_addMascota.json')
    * def bodyUpdate = read('classpath:com/bdd/req/body_updateMascota.json')

  @añadirMascota
  Scenario: Añadir una mascota a la tienda
    Given path '/pet'
    And request body
    When method post
    Then status 200

  @consultarMascotaPorID
  Scenario: Consultar mascota por ID
    Given path '/pet/922'
    When method get
    Then status 200

  @actualizarMascota
  Scenario: Actualizar el nombre de la mascota y el estatus a “sold”
    Given path '/pet'
    And request bodyUpdate
    When method put
    Then status 200

  @buscarMascotaPorStatus
  Scenario: Consultar mascota por estatus
    Given path '/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
