resource "aws_iam_user" "user-assigner" {
    count = length(var.username)
    name = element(var.username, count.index)
}

resource "aws_iam_user_login_profile" "User-Policy-attachment"{
    count = length(var.username)
    user = aws_iam_user.user-assigner[count.index].name
    password_reset_required = true
}

resource "aws_iam_user_policy_attachment" "assigner" {
    count = length(var.username)
    user = element(aws_iam_user.user-assigner.*.name, count.index)
    policy_arn = aws_iam_policy.Create_User_And_Assign_Role
}