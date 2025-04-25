# Usa una imagen base con Java 17
FROM eclipse-temurin:17-jdk

# Actualiza e instala las dependencias necesarias para Go y Python
USER root

# Instalar dependencias necesarias (Go y Python)
RUN apt-get update && \
    apt-get install -y golang python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Verifica instalación de Python
RUN python3 --version
RUN pip3 --version

# Crea el usuario jenkins
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Crea el directorio de trabajo
RUN mkdir -p /home/jenkins/agent && chown -R jenkins:jenkins /home/jenkins

# Cambia al usuario jenkins
USER jenkins

# Establece el directorio de trabajo
WORKDIR /home/jenkins/agent

# Exponer el puerto para JNLP
EXPOSE 50000

# Mantener el contenedor corriendo
CMD ["sleep", "infinity"]

