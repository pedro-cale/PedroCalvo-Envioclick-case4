# README - Despliegue de la Aplicación con Terraform

Este repositorio inicialmente contenía solo el código de la aplicación en la carpeta `app/`, que incluye una función Lambda escrita en Python (`main.py`), sus dependencias (`requirements.txt`) y pruebas (`test_main.py`).

Para habilitar el despliegue automatizado de la aplicación en AWS utilizando Terraform, se agregaron los siguientes elementos al repositorio:

## Elementos Agregados

### 1. Carpeta `infra/`
- **Propósito**: Contiene la configuración de Infrastructure as Code (IaC) con Terraform para desplegar la función Lambda en AWS.
- **Archivos incluidos**:
  - `main.tf`: Define los recursos principales (como la función Lambda, roles IAM, etc.).
  - `variables.tf`: Define las variables de configuración (región, nombre de la función, etc.).
  - `outputs.tf`: Define las salidas del despliegue (ARN de la función, nombre, etc.).
  - `backend.tf`: Configura el backend para el estado de Terraform.
  - `README.md`: Documentación detallada sobre cómo usar Terraform para el despliegue.
- **Cómo funciona**: Permite crear y gestionar la infraestructura necesaria en AWS de manera declarativa y reproducible.

### 2. Archivo `.github/workflows/deploy.yml`
- **Propósito**: Define un flujo de trabajo de GitHub Actions para el despliegue automatizado.
- **Funcionalidad**: Se activa en pushes a las ramas `main` (producción) o `develop` (desarrollo). Instala Terraform, inicializa el backend, valida la configuración, planifica y aplica los cambios en AWS.
- **Beneficios**: Automatiza el proceso de despliegue, reduciendo errores manuales y permitiendo integración continua.

### 3. Archivo `.gitignore`
- **Propósito**: Especifica archivos y carpetas que no deben ser rastreados por Git.
- **Contenido típico**: Incluye archivos temporales, dependencias locales, claves secretas, etc., para mantener el repositorio limpio y seguro.

## Proceso de Despliegue

1. **Desarrollo local**: Modifica el código en `app/`.
2. **Pruebas**: Ejecuta las pruebas en `test_main.py`.
3. **Commit y push**: Sube los cambios a la rama correspondiente.
4. **Despliegue automático**: GitHub Actions ejecuta Terraform para actualizar la infraestructura en AWS.

## Requisitos Previos

- Cuenta de AWS con permisos adecuados.
- Bucket de S3 para el backend de terraform
- DynamoDB table para guardar ahi los tfstate locks
- OIDC identity en IAM para el role que pueda ejecutar github actions