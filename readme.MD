# This module creates below resources

* aws_vpc
* aws_internet_gateway
* aws_subnet (public , private and database 1 in each zone 1a,1b --tot 6 subnets)
* aws_db_subnet_group (we'll have DB subnets here from 1a and 1b AZs)
* aws_eip
* aws_nat_gateway
* aws_route_table (pub, private and database)
* aws_route (pub , private and database)-associate private and database with NAT & pub with IGW
* aws_route_table_association (associate subnets with routetables)
* aws_vpc_peering_connection (also peering routes with acceptor and requestor route tables)

# INPUTS

# Mandatory inputs
    project_name 
    environment  
    vpc_cidr
    public_subnet_cidrs - must provide 2 valid public subnets for 2 AZs
    private_subnet_cidrs - must provide 2 valid private subnets for 2 AZs
    database_subnet_cidrs - must provide 2 valid database subnets for 2 AZs
    

 # Optional inputs
    common_tags 
    is_peering_required - defaults to false
    enable_dns_hostnames - defaults to true
    common_tags
    vpc_tags
    igw_tags
    database_subnet_group_tags
    public_subnet_tags
    private_subnet_tags
    database_subnet_tags
    public_route_table_tags
    private_route_table_tags
    database_route_table_tags
    nat_gateway_tags
    vpc_peering_tags

# OUTPUTS
vpc_id
public_subnet_IDs
private_subnet_IDs
database_subnet_IDs




