# Usa una imagen base con Java 17
FROM eclipse-temurin:17-jdk

# Usa el usuario root temporalmente para instalar paquetes
USER root

# Instalar dependencias necesarias (Go, Python, pip y venv)
RUN apt-get update && \
    apt-get install -y golang python3 python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists/*

# Verifica instalación de Python
RUN python3 --version
RUN pip3 --version

# Crear el usuario jenkins
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Crear el directorio de trabajo y asignar permisos
RUN mkdir -p /home/jenkins/agent && chown -R jenkins:jenkins /home/jenkins

# Cambiar al usuario jenkins
USER jenkins

# Establecer el directorio de trabajo
WORKDIR /home/jenkins/agent

# Exponer el puerto para JNLP
EXPOSE 50000

# Mantener el contenedor activo
CMD ["sleep", "infinity"]


