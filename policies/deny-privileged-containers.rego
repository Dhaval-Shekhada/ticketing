package kubernetes.admission

deny[msg] {
  input.request.kind.kind == "Pod"
  input.request.spec.containers[_].securityContext.privileged == true
  msg = "Privileged containers are not allowed"
}
