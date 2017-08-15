provider "google" {
    credentials = "${file("rovniyserv1-e0f3d25c5d02.json")}"
    project     = "rovniyserv1"
    region      = "us-central1"
}

resource "google_compute_instance" "default" {
    
    name         = "lamp"
    machine_type = "n1-standard-1"
    zone         = "us-central1-a"

    tags         = ["foo", "bar"]

    boot_disk {
        initialize_params {
            image = "https://storage.cloud.google.com/agile-charger-6522/CentOS7Minimal.iso?_ga=1.177714789.1912691654.1501062772"
        }

}
network_interface {
    network = "default"
    access_config {
      nat_ip = "192.168.1.115"
              }
  }
metadata {
    foo="bar"
}

metadata_startup_script = "echo hi > /test.txt"

service_account {
    scopes = ["rovserg@gmail.com", "compute_ro", "storage_ro"]
}
}
