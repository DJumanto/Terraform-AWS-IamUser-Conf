output "user_arn" {
    value = "${aws_iam_user.user-assigner.*.arn}"
}

output "password" {
    value = aws_iam_user_login_profile.user-assigner.*.encrypted_password
}