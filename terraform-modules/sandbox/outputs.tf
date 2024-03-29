output "java_spring" {
    value = module.java_spring.endpoint
}

output java_spring_private_ip{
    value = module.java_spring.private_ip
}

output java_spring_public_ip{
    value = module.java_spring.public_ip
}
output "guacamole"{
        value = "http://${module.guacamole.endpoint}"
}
 
/* output "old_private_key" {
    value = module.infra.old_private_key
} */

output "private_key" {
    value = module.infra.private_key
}