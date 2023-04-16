# terraform
Для хранения tfstate используется bucket, который создается руками в облаке до запуска terraform

terraform plan/apply/destroy -target module.bucket1 -обращение к отдельному модулю

к модулю мы обращаемся через служебное слово module.module_name.uotput_parametre
1. служебное слово module
2. имя модуля
3. необходимый параметр который должен присутствовать в выходных параметрах модуля output