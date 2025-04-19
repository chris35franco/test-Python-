class Usuario:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
        self.activo = False

    def activar(self):
        self.activo = True

    def es_mayor_de_edad(self):
        return self.edad >= 18