import pytest
from usuarios import Usuario

def test_activar_usuario():
    user = Usuario("Carlos", 20)
    user.activar()
    assert user.activo == True

def test_mayor_de_edad():
    adulto = Usuario("Ana", 25)
    menor = Usuario("Luis", 15)
    assert adulto.es_mayor_de_edad() == True
    assert menor.es_mayor_de_edad() == False