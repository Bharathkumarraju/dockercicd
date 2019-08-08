output "config-map-aws-auth" {
  value = "${module.bharathk8s.config-map-aws-auth}"
}

output "kubeconfig" {
  value = "${module.bharathk8s.kubeconfig}"
}

output "alb-security-group" {
  value = "${module.bharathk8s.alb-security-group-id}"
}

output "nodes-role-arn" {
  value = "${module.bharathk8s.nodes-role-arn}"
}

output "cluster-name" {
  value = "${module.bharathk8s.cluster-name}"
}

output "alb-subnets" {
  value = "${join(",", module.bharathk8s.alb-subnets)}"
}

output "endpoint" {
  value = "${module.bharathk8s.endpoint}"
}

output "certificate-authority-data" {
  value = "${module.bharathk8s.certificate-authority-data}"
}


output "aws-region" {
  value = "${data.aws_region.current.name}"
}

output "vpc-id" {
  value = "${module.bharathk8s.vpc-id}"
}

output "private-subnet-ids" {
  value = "${module.bharathk8s.private-subnet-ids}"
}

output "public-subnet-ids" {
  value = "${module.bharathk8s.public-subnet-ids}"
}

output "node-securitygroup-id" {
  value = "${module.bharathk8s.node-securitygroup-id}"
}
