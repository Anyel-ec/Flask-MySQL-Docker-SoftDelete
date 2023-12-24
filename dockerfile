# Usa la imagen oficial de Python como base
FROM python:3.8

# Configura el trabajo en el directorio /app
WORKDIR /app

# Copia los archivos necesarios
COPY . /app

# Instala las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que tu aplicación Flask estará escuchando
EXPOSE 5000

# Comando para ejecutar tu aplicación Flask
CMD ["python", "app.py"]
