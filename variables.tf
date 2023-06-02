variable "program" {
    description = "The executable used to run your program."
    type = string
}

variable "handler" {
    description = "The entrypoint handler for your program."
    type = string
}

variable "arguments" {
    description = "A list of arguments to be supplied to your program."
    type = list(string)
    default = []
}

variable "environment_variables" {
    description = "A mapping of environment variables set prior to program execution."
    type = map(string)
    default = {}
}

variable "install_dependencies" {
    description = "A list of commands used to install dependencies for your program."
    type = string
    default = ""
}