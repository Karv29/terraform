resource "aws_s3_bucket" "akhil" {
  #count = 3
  for_each = var.abhiraj2
  bucket = each.value

  tags = {
    owner = "abhiraj.chaudhary@cloudeq.com"
    purpose = "training"
    name = "abhiraj"
  }
}

