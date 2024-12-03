locals {
   resource_name = "${var.project_name}-${var.environment}"
   az_names = slice(data.aws_availability_zones.available.names, 0, 2) #here "names" in the end coz , the output of data.aws_availability_zones.available has az_names under names
}
