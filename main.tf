# our user list
variable "users" {
  type        = list(string)
  description = "a list of users"
  default     = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne", "breena"]
}

# dev
resource "aws_iam_user" "dev-users" {
  count = length(var.users)
  name  = join("", ["dev-", var.users[count.index]])
}

resource "aws_iam_access_key" "dev-users-access_key" {
  count = length(var.users)
  user  = join("", ["dev-", var.users[count.index]])

  depends_on = [aws_iam_user.dev-users]
}

# qa
resource "aws_iam_user" "qa-users" {
  count = length(var.users)
  name  = join("", ["qa-", var.users[count.index]])
}

resource "aws_iam_access_key" "qa-users-access_key" {
  count = length(var.users)
  user  = join("", ["qa-", var.users[count.index]])

  depends_on = [aws_iam_user.qa-users]
}

# uat
resource "aws_iam_user" "uat-users" {
  count = length(var.users)
  name  = join("", ["uat-", var.users[count.index]])
}

resource "aws_iam_access_key" "uat-users-access_key" {
  count = length(var.users)
  user  = join("", ["uat-", var.users[count.index]])

  depends_on = [aws_iam_user.uat-users]
}

# test
resource "aws_iam_user" "test-users" {
  count = length(var.users)
  name  = join("", ["test-", var.users[count.index]])
}

resource "aws_iam_access_key" "test-users-access_key" {
  count = length(var.users)
  user  = join("", ["test-", var.users[count.index]])

  depends_on = [aws_iam_user.test-users]
}

# prod

resource "aws_iam_user" "prod-users" {
  count = length(var.users)
  name  = join("", ["prod-", var.users[count.index]])
}

resource "aws_iam_access_key" "prod-users-access_key" {
  count = length(var.users)
  user  = join("", ["prod-", var.users[count.index]])

  depends_on = [aws_iam_user.prod-users]
}
