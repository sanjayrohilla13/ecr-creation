resource "aws_ecr_repository" "ecr" {
    name = "${var.application_name}/${var.repo_name}"
    image_tag_mutability = "MUTABLE"
    image_scanning_configuration {
      scan_on_push = true
    }
    tags = {
        application_id = var.application_id
        Environment     =  var.environment
    }
}