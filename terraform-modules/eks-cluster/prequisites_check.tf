locals{
    python_check_cmd = "python --version"
    eksctl_check_cmd = "eksctl version"
    kubectl_check_cmd = "kubectl version --short"
    awscli_check_cmd = "aws --version"
}


resource null_resource "prequisites_check"{
    provisioner "local-exec" {
        when = create
        command = join(" ; ",[local.python_check_cmd,local.eksctl_check_cmd,local.kubectl_check_cmd,local.awscli_check_cmd])
    }
}