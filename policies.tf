resource "aws_iam_policy" "Create_User_And_Assign_Role" {
    name = "Create_Enroll"
    policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "iam:CreateUser",
          "iam:CreateLoginProfile",
          "iam:CreateAccessKey",
          "iam:TagUser",
          "iam:AttachUserPolicy",
          "iam:PutUserPolicy",
          "iam:ListAttachedUserPolicies"
        ]
        Resource = "*"
      }
    ]
  })
}