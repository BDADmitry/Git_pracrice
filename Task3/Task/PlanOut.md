Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # aws_instance.centos[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_instance" "centos" {
      [32m+[0m [0m[1m[0mami[0m[0m                                  = "ami-08b6d44b4f6f7b279"
      [32m+[0m [0m[1m[0marn[0m[0m                                  = (known after apply)
      [32m+[0m [0m[1m[0massociate_public_ip_address[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mcpu_core_count[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mcpu_threads_per_core[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mdisable_api_termination[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mebs_optimized[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mget_password_data[0m[0m                    = false
      [32m+[0m [0m[1m[0mhost_id[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                                   = (known after apply)
      [32m+[0m [0m[1m[0minstance_initiated_shutdown_behavior[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0minstance_state[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0minstance_type[0m[0m                        = "t2.micro"
      [32m+[0m [0m[1m[0mipv6_address_count[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mipv6_addresses[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mkey_name[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mmonitoring[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0moutpost_arn[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mpassword_data[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mplacement_group[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mplacement_partition_number[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mprimary_network_interface_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mprivate_ip[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_dns[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ip[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0msecondary_private_ips[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0msecurity_groups[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0msource_dest_check[0m[0m                    = true
      [32m+[0m [0m[1m[0msubnet_id[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                                 = {
          [32m+[0m [0m"Name" = "CentOS"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m                             = {
          [32m+[0m [0m"Name" = "CentOS"
        }
      [32m+[0m [0m[1m[0mtenancy[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0muser_data[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0muser_data_base64[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvpc_security_group_ids[0m[0m               = (known after apply)

      [32m+[0m [0mcapacity_reservation_specification {
          [32m+[0m [0m[1m[0mcapacity_reservation_preference[0m[0m = (known after apply)

          [32m+[0m [0mcapacity_reservation_target {
              [32m+[0m [0m[1m[0mcapacity_reservation_id[0m[0m = (known after apply)
            }
        }

      [32m+[0m [0mebs_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0msnapshot_id[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }

      [32m+[0m [0menclave_options {
          [32m+[0m [0m[1m[0menabled[0m[0m = (known after apply)
        }

      [32m+[0m [0mephemeral_block_device {
          [32m+[0m [0m[1m[0mdevice_name[0m[0m  = (known after apply)
          [32m+[0m [0m[1m[0mno_device[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mvirtual_name[0m[0m = (known after apply)
        }

      [32m+[0m [0mmetadata_options {
          [32m+[0m [0m[1m[0mhttp_endpoint[0m[0m               = (known after apply)
          [32m+[0m [0m[1m[0mhttp_put_response_hop_limit[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhttp_tokens[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0minstance_metadata_tags[0m[0m      = (known after apply)
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_index[0m[0m          = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m  = (known after apply)
        }

      [32m+[0m [0mroot_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }
    }

[1m  # aws_instance.web[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_instance" "web" {
      [32m+[0m [0m[1m[0mami[0m[0m                                  = "ami-0d527b8c289b4af7f"
      [32m+[0m [0m[1m[0marn[0m[0m                                  = (known after apply)
      [32m+[0m [0m[1m[0massociate_public_ip_address[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mcpu_core_count[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mcpu_threads_per_core[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mdisable_api_termination[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mebs_optimized[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mget_password_data[0m[0m                    = false
      [32m+[0m [0m[1m[0mhost_id[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                                   = (known after apply)
      [32m+[0m [0m[1m[0minstance_initiated_shutdown_behavior[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0minstance_state[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0minstance_type[0m[0m                        = "t2.micro"
      [32m+[0m [0m[1m[0mipv6_address_count[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mipv6_addresses[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mkey_name[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mmonitoring[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0moutpost_arn[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mpassword_data[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mplacement_group[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mplacement_partition_number[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mprimary_network_interface_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mprivate_ip[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_dns[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ip[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0msecondary_private_ips[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0msecurity_groups[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0msource_dest_check[0m[0m                    = true
      [32m+[0m [0m[1m[0msubnet_id[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                                 = {
          [32m+[0m [0m"Name" = "WebServer with my page"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m                             = {
          [32m+[0m [0m"Name" = "WebServer with my page"
        }
      [32m+[0m [0m[1m[0mtenancy[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0muser_data[0m[0m                            = "15d1cc3a1b7257e1fc256e91597a3f6d4305a29b"
      [32m+[0m [0m[1m[0muser_data_base64[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mvpc_security_group_ids[0m[0m               = (known after apply)

      [32m+[0m [0mcapacity_reservation_specification {
          [32m+[0m [0m[1m[0mcapacity_reservation_preference[0m[0m = (known after apply)

          [32m+[0m [0mcapacity_reservation_target {
              [32m+[0m [0m[1m[0mcapacity_reservation_id[0m[0m = (known after apply)
            }
        }

      [32m+[0m [0mebs_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0msnapshot_id[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }

      [32m+[0m [0menclave_options {
          [32m+[0m [0m[1m[0menabled[0m[0m = (known after apply)
        }

      [32m+[0m [0mephemeral_block_device {
          [32m+[0m [0m[1m[0mdevice_name[0m[0m  = (known after apply)
          [32m+[0m [0m[1m[0mno_device[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mvirtual_name[0m[0m = (known after apply)
        }

      [32m+[0m [0mmetadata_options {
          [32m+[0m [0m[1m[0mhttp_endpoint[0m[0m               = (known after apply)
          [32m+[0m [0m[1m[0mhttp_put_response_hop_limit[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhttp_tokens[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0minstance_metadata_tags[0m[0m      = (known after apply)
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_index[0m[0m          = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m  = (known after apply)
        }

      [32m+[0m [0mroot_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }
    }

[1m  # aws_internet_gateway.igw[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_internet_gateway" "igw" {
      [32m+[0m [0m[1m[0marn[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m     = {
          [32m+[0m [0m"Name" = "igw"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m = {
          [32m+[0m [0m"Name" = "igw"
        }
      [32m+[0m [0m[1m[0mvpc_id[0m[0m   = (known after apply)
    }

[1m  # aws_route_table.Private[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table" "Private" {
      [32m+[0m [0m[1m[0marn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpropagating_vgws[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mroute[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m             = {
          [32m+[0m [0m"Name" = "PrivateRouteTable"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m         = {
          [32m+[0m [0m"Name" = "PrivateRouteTable"
        }
      [32m+[0m [0m[1m[0mvpc_id[0m[0m           = (known after apply)
    }

[1m  # aws_route_table.Public[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table" "Public" {
      [32m+[0m [0m[1m[0marn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpropagating_vgws[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mroute[0m[0m            = [
          [32m+[0m [0m{
              [32m+[0m [0mcarrier_gateway_id         = ""
              [32m+[0m [0mcidr_block                 = "0.0.0.0/0"
              [32m+[0m [0mdestination_prefix_list_id = ""
              [32m+[0m [0megress_only_gateway_id     = ""
              [32m+[0m [0mgateway_id                 = (known after apply)
              [32m+[0m [0minstance_id                = ""
              [32m+[0m [0mipv6_cidr_block            = ""
              [32m+[0m [0mlocal_gateway_id           = ""
              [32m+[0m [0mnat_gateway_id             = ""
              [32m+[0m [0mnetwork_interface_id       = ""
              [32m+[0m [0mtransit_gateway_id         = ""
              [32m+[0m [0mvpc_endpoint_id            = ""
              [32m+[0m [0mvpc_peering_connection_id  = ""
            },
        ]
      [32m+[0m [0m[1m[0mtags[0m[0m             = {
          [32m+[0m [0m"Name" = "PublicRouteTable"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m         = {
          [32m+[0m [0m"Name" = "PublicRouteTable"
        }
      [32m+[0m [0m[1m[0mvpc_id[0m[0m           = (known after apply)
    }

[1m  # aws_route_table_association.Private[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "Private" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # aws_route_table_association.Public[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "Public" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # aws_security_group.centos[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "centos" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Security Group for CentOS"
      [32m+[0m [0m[1m[0megress[0m[0m                 = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 0
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "-1"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 0
            },
        ]
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 22
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 22
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 443
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 443
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 80
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 80
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port ICMP"
              [32m+[0m [0mfrom_port        = -1
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "icmp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = -1
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = "CentOS-SG"
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags[0m[0m                   = {
          [32m+[0m [0m"Name" = "Security Group for CentOS"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = {
          [32m+[0m [0m"Name" = "Security Group for CentOS"
        }
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # aws_security_group.web[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "web" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Security Group for my WebServer"
      [32m+[0m [0m[1m[0megress[0m[0m                 = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 0
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "-1"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 0
            },
        ]
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 22
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 22
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 443
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 443
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port HTTP"
              [32m+[0m [0mfrom_port        = 80
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 80
            },
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = "Allow port ICMP"
              [32m+[0m [0mfrom_port        = -1
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "icmp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = -1
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = "WebServer"
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags[0m[0m                   = {
          [32m+[0m [0m"Name" = "Ubuntu_ICMP_HTP_HTTP_SSH"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = {
          [32m+[0m [0m"Name" = "Ubuntu_ICMP_HTP_HTTP_SSH"
        }
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # aws_subnet.private_subnet[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "private_subnet" {
      [32m+[0m [0m[1m[0marn[0m[0m                                            = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m                = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                                     = "10.0.11.0/24"
      [32m+[0m [0m[1m[0menable_dns64[0m[0m                                   = false
      [32m+[0m [0m[1m[0menable_resource_name_dns_a_record_on_launch[0m[0m    = false
      [32m+[0m [0m[1m[0menable_resource_name_dns_aaaa_record_on_launch[0m[0m = false
      [32m+[0m [0m[1m[0mid[0m[0m                                             = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mipv6_native[0m[0m                                    = false
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m                        = false
      [32m+[0m [0m[1m[0mowner_id[0m[0m                                       = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns_hostname_type_on_launch[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                                       = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                                         = (known after apply)
    }

[1m  # aws_subnet.public_subnet[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "public_subnet" {
      [32m+[0m [0m[1m[0marn[0m[0m                                            = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m                = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                                     = "10.0.10.0/24"
      [32m+[0m [0m[1m[0menable_dns64[0m[0m                                   = false
      [32m+[0m [0m[1m[0menable_resource_name_dns_a_record_on_launch[0m[0m    = false
      [32m+[0m [0m[1m[0menable_resource_name_dns_aaaa_record_on_launch[0m[0m = false
      [32m+[0m [0m[1m[0mid[0m[0m                                             = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mipv6_native[0m[0m                                    = false
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m                        = true
      [32m+[0m [0m[1m[0mowner_id[0m[0m                                       = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns_hostname_type_on_launch[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                                       = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                                         = (known after apply)
    }

[1m  # aws_vpc.myvpc[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_vpc" "myvpc" {
      [32m+[0m [0m[1m[0marn[0m[0m                                  = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                           = "10.0.0.0/16"
      [32m+[0m [0m[1m[0mdefault_network_acl_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mdefault_route_table_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mdefault_security_group_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mdhcp_options_id[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0menable_classiclink[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0menable_classiclink_dns_support[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0menable_dns_hostnames[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0menable_dns_support[0m[0m                   = true
      [32m+[0m [0m[1m[0mid[0m[0m                                   = (known after apply)
      [32m+[0m [0m[1m[0minstance_tenancy[0m[0m                     = "default"
      [32m+[0m [0m[1m[0mipv6_association_id[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_network_border_group[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mmain_route_table_id[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                                 = {
          [32m+[0m [0m"Name" = "myvpc"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m                             = {
          [32m+[0m [0m"Name" = "myvpc"
        }
    }

[0m[1mPlan:[0m 12 to add, 0 to change, 0 to destroy.
[0m[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.