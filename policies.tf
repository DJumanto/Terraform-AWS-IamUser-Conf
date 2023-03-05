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

resource "aws_iam_account_password_policy" "strict" {
    minimum_password_length     = 8
    require_lowercase_characters = true
    require_numbers = true
    require_symbols = true
    require_uppercase_characters = true
    allow_users_to_change_password = true
}