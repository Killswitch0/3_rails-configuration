# rails-configuration

* Смотри config/environments/staging_unmerged.rb, controllers/pages_controller.rb

* Чтобы запустить сервер или консоль в кастомном environment:

  ```
  bin/rails s -e staging_unmerged
  ```
  или
  
  RAILS_ENV - глобальная перменная окружения. Отвечает за загрузку приложения в нужном environment.
  ```
  RAILS_ENV=staging_unmerged bin/rails c
  ```
  
* gem 'spring' - инструмент в Rails, выполняющий невидимую, но очень важную работу:
  он прездагружает приложение, увеличивая скорость разработки, храня приложение запущенным 
  в фоновом режиме - благодаря этому при запуске тестов, задач(типа rake) или миграций