terraform {
 required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=4.59.0"
    }
  }
  
}
provider google {
  project     = "profound-hydra-384812" ##get frpm project id 
  region      = "us-central1"
  zone        = "us-central1"
  credentials = file("profound-hydra-384812-690e29dab523.json") ## create new service account and then to create key
  
}

resource "google_storage_bucket" "wf-gcs-1" {
 name          = "wf-gcs-1"
 location      = "US"
 storage_class = "STANDARD"

}

    
