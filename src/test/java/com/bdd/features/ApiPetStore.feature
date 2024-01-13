Feature: API de tienda PetStore

  Background:
    Given url urlBase

  @añadirMascota
  Scenario: Añadir una mascota a la tienda
    Given path '/pet'
    And request
    """
    {
      "id": 914,
      "category": {
        "id": 914,
        "name": "string"
      },
      "name": "Boby",
      "photoUrls": ["string"],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """
    When method post
    Then status 200

  @consultarMascotaPorID
  Scenario: Consultar mascota por ID
    Given path '/pet/914'
    When method get
    Then status 200

  @actualizarMascota
  Scenario: Actualizar el nombre de la mascota y el estatus a “sold”
    Given path '/pet'
    And request
    """
    {
      "id": 914,
      "category": {
        "id": 914,
        "name": "string"
      },
      "name": "BobyUpdate",
      "photoUrls": ["string"],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "sold"
    }
    """
    When method put
    Then status 200

  @buscarMascotaPorStatus
  Scenario: Consultar mascota por estatus
    Given path '/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
