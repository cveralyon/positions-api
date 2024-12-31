# REDNIAM Backend

Este proyecto es el backend de un sistema de gestión de posiciones de trabajo. Construido con Ruby on Rails, proporciona un conjunto de API para manejar posiciones, clientes y funcionalidades avanzadas como generación automática de contenido usando OpenAI.

## Características

- **Gestión de posiciones:** CRUD completo para posiciones.
- **Integración con OpenAI:** Relleno automático de datos basado en prompts.

## Requisitos

- Ruby
- PostgreSQL
- Bundler

## Instalación

1. Clona este repositorio

2. Instala las dependencias:
bundle install

3. Configura la base de datos con tu PostgreSQL

4. Crea y migra la base de datos:
rails db:create
rails db:migrate
rails db:seed

5. Configura las variables de entorno:
OPENAI_API_KEY=<clave_de_openai>

6. Ejecuta el servidor:
rails server