// 리소스 타입 : aws_key_pair
// 리소스에 임의로 붙일 수 있는 이름 : admin
resource "aws_key_pair" "admin" {
  key_name = "admin"
  public_key = "${file("~/.ssh/admin.pub")}"
}