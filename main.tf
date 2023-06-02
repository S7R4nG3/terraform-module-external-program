locals {
    file_id = uuid()
}

resource "local_file" "exec" {
    filename = "${path.module}/${local.file_id}.sh"
    content = templatefile("${path.module}/executor.tftpl", 
    {
        environment_variables = var.environment_variables
        program = var.program
        handler = var.handler
        arguments = var.arguments
        install_dependencies = var.install_dependencies
    }) 
}

data "external" "this" {
    program = ["bash", "-c", "${path.module}/${local.file_id}.sh"]
    depends_on = [
        local_file.exec
    ]
}