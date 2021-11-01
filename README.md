# tf-home

This is a personal Terraform repository, running on Oracle Cloud Always-Free instances.

## Terraform

The *./terraform/* directory contains the main Terraform repo, which creates a compartment, vcn, subnet, and
a cluster of compute resources.  User_data can be specified to configure how the resources are deployed.

## Module: ckxng_oci_compute

The *ckxng_oci_compute* module provisions a group of compute instances with IPv6 support.

## Module: ckxng_oci_network

The *ckxng_oci_network* module provisions a vcn, subnet, and routing table with IPv6 support.
