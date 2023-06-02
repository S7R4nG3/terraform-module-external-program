output "arguments" {
    value = data.external.this.result.arguments
}

output "result" {
    value = data.external.this.result.result
}

output "program" {
    value = data.external.this.result.program
}

output "handler" {
    value = data.external.this.result.handler
}

output "dependencies" {
    value = data.external.this.result.dependencies
}

output "environment_variables" {
    value = data.external.this.result.env_vars
}