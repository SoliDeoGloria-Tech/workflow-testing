resource "random_pet" "my_pet" {
  length = 2
}

output "pet" { value = random_pet.my_pet.id }
