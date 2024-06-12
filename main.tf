resource "random_pet" "my_pet" {
length = "string"
}

output "pet" {
  value = random_pet.my_pet.id
}
