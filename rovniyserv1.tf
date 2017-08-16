provider "google" {
    credentials = "${file("rovniyserv1-e0f3d25c5d02.json")}"
    project     = "rovniyserv1"
    region      = "us-east4"
}

resource "google_compute_instance" "default" {
    
    name         = "lamp"
    machine_type = "n1-standard-4"
    zone         = "us-east4-b"

    tags         = ["foo", "bar"]

    boot_disk {
        initialize_params {
            image = "centos-cloud/centos-7"
        }

}
network_interface {
    network = "default"
     }
metadata {
    foo="bar"
}

metadata_startup_script = "echo hi > /test.txt"
service_account {
    email = "rovserg@rovniyserv1.iam.gserviceaccount.com"
    scopes = [ "https://www.googleapis.com/auth/cloud-platform"]
}


}
