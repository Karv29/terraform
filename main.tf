
resource "local_file" "file_block" {
  content  = "${random_id.random_value.hex}"
  filename = "abhi.py"
}
resource "local_file" "file_block1" {
  content  = "java is here"
  filename = "happy.java"
}
resource "local_file" "file_block2" {
  content  = local.cont2
  filename = "a.py"
}
resource "local_file" "file_block3" {
  content  = local.cont
  filename = "wonder.py"
}
resource "local_file" "file_block4" {
  content  = local.cont3
  filename = "terra.py"
}

locals {
  cont = "everything is fare"
  cont2 = "I am groot"
  cont3 = "Happy hours days "
}
resource "random_id" "random_value" {
 byte_length = 8
}