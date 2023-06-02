module "program" {
    source = "../"
    program = "python3"
    handler = "${path.module}/python/main.py"
    arguments = ["foo", "bar", "baz", "portato"]
    install_dependencies = "pip install -r ${path.module}/python/requirements.txt"  
}

module "program2" {
    source = "../"
    program = "bash"
    handler = "${path.module}/bash/script.sh"
    arguments = ["arg"]
    environment_variables = {
      THIS_ENV_VAR = "potato"
      OTHER_ENV_VAR = "things"
    }
}

output "stdout" {
    value = module.program.result
}

output "stdout2" {
    value = module.program2.result
}