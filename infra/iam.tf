resource "aws_iam_instance_profile" "backend_server" {
}

resource "aws_iam_role" "project" {
  assume_role_policy = <<EOF
        {
        "Version": "2012-10-17",
        "Statement": [
            {
            "Action": "sts:AssumeRole",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
            }
        ]
        }
        EOF
}

data "aws_iam_policy_document" "assume_role" {
}