
# Rails

Este es un proyecto que contiene los elementos básicos para comenzar con el desarrollo de aplicación financiera finan-easy de flujo de cajas con Ruby on Rails.

# Versiones
ruby "3.0.0"
	

	# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
	gem "rails", "~> 7.0.3", ">= 7.0.3.1"


## Configuración

Clona el proyecto desde https://github.com/leonardoa123/finan-easy con  el code SSH 

git@github.com:leonardoa123/finan-easy.git

## Para empezar localmente

Para arrancar los servicios necesario para trabajar localmente ejecuta:

    Rails s

Y visita http://localhost:3000/

## Actualizar dependencias

Las gemas de ruby instaladas son:


gem 'kaminari'
gem ‘faker’
gem ‘devise’
necesitas actualizar el `Gemfile`y ejecuta de nuevo



## Mail

Cualquier email lanzado desde el entorno local de desarrollo se captura con Mailcatcher, y se pueden ver en http://localhost:1080/

## Flujo de trabajo

Desarrolla en ramas que salgan de la rama principal `main`, después genera una pull request.

Una vez la pull request tiene los checks verdes (rubocop y rspec) y está aprobada se puede mergear en `main`.

