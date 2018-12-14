# db-terraform

awsのRDSを使ってmysql8を作成する
terraformプロジェクトです。

terraform.tfvars.templateの中身を書き換えて
拡張子の.templateを削除してから
下記を実行してください。

```
terraform init
terraform plan
terraform apply

# 削除
terraform destroy
```