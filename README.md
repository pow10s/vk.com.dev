To start the project we need:
  0. Download project
  1. Install composer(`https://getcomposer.org/doc/00-intro.md`)
  3. Run `composer install` from console
  4. Change config`s for your db in phinx.yml (development)
  5. Change config`s for your db in config.php
  6. Run command ` vendor\bin\phinx migrate`(windows) or `vendor/bin/phinx migrate`(Linux)  from console
  7. Run seeder ` vendor\bin\phinx seed:run `(windows) or `vendor/bin/phinx seed:run `(Linux)  from console
  8. ADMIN_EMAIL : admin@gmail.com; ADMIN_PASSWORD : s1t2o3s4
  9. db dump(db/vkontakte.sql) or you can use migration (point 7 and 8)
