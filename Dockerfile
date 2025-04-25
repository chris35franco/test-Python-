# Usa una imagen base con Java 17
FROM eclipse-temurin:17-jdk

# Actualiza e instala las dependencias necesarias para Go y Python
USER root

# Instalar Go
RUN apt-get update && \
    apt-get install -y golang && \
    rm -rf /var/lib/apt/lists/*

# Instalar Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Crea el usuario jenkins
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins

# Crea el directorio de trabajo
RUN mkdir -p /home/jenkins/agent && chown -R jenkins:jenkins /home/jenkins

# Cambia al usuario jenkins
USER jenkins

# Establece el directorio de trabajo
WORKDIR /home/jenkins/agent

# Puerto opcional si vas a usar JNLP
EXPOSE 50000

# Comando para mantener el contenedor corriendo (lo puedes cambiar según cómo lo conectes)
CMD ["sleep", "infinity"]
