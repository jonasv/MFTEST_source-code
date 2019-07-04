output "dev_environment_users" {
  value = "${
    map(
      "username/access_key/secret_access_key", list("${aws_iam_user.dev-users.*.name}", "${aws_iam_access_key.dev-users-access_key.*.id}", "${aws_iam_access_key.dev-users-access_key.*.secret}")
    )
  }"
}

output "qa_environment_users" {
  value = "${
    map(
      "username/access_key/secret_access_key", list("${aws_iam_user.qa-users.*.name}", "${aws_iam_access_key.qa-users-access_key.*.id}", "${aws_iam_access_key.qa-users-access_key.*.secret}")
    )
  }"
}

output "uat_environment_users" {
  value = "${
    map(
      "username/access_key/secret_access_key", list("${aws_iam_user.uat-users.*.name}", "${aws_iam_access_key.uat-users-access_key.*.id}", "${aws_iam_access_key.uat-users-access_key.*.secret}")
    )
  }"
}

output "test_environment_users" {
  value = "${
    map(
      "username/access_key/secret_access_key", list("${aws_iam_user.test-users.*.name}", "${aws_iam_access_key.test-users-access_key.*.id}", "${aws_iam_access_key.test-users-access_key.*.secret}")
    )
  }"
}

output "prod_environment_users" {
  value = "${
    map(
      "username/access_key/secret_access_key", list("${aws_iam_user.prod-users.*.name}", "${aws_iam_access_key.prod-users-access_key.*.id}", "${aws_iam_access_key.prod-users-access_key.*.secret}")
    )
  }"
}

