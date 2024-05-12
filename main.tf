# Create new storage bucket in the US
# location with Standard Storage

resource "google_storage_bucket" "static" {
name          = "my-bucket-name-is-toge-girl"
location      = "US"
storage_class = "STANDARD"
project    = "<project-id>"

uniform_bucket_level_access = true
}