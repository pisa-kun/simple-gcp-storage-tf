# terraformでgoogle storageを作るまで

ローカルでterraformを使ってgoogle storageを作成するまで

## command

google CLIをインストール後に、次のコマンドを実行してローカルにクレデンシャルのファイルを作る。
> gcloud auth application-default login

```output
Credentials saved to file: [C:\Users\<username>\AppData\Roaming\gcloud\application_default_credentials.json] 
```

main.tfにストレージ情報を記載
```tf
resource "google_storage_bucket" "static" {
 name          = "my-bucket-name-is-toge-girl"
 location      = "US"
 storage_class = "STANDARD"
 project    = "<project-id>"

 uniform_bucket_level_access = true
}
```
**project-id**は対象のプロジェクト情報に差し替えすること

> terraform init  
> terraform apply

## 参考

- 公式のチュートリアル  
https://cloud.google.com/storage/docs/terraform-create-bucket-upload-object?hl=ja

- ローカル環境の構築  
https://zenn.dev/ikedam/articles/b66583e17c7615

- google_storage_bucket
https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket