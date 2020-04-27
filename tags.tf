locals {
  ### TAGS
  #GENERIC FOR HUB COLLECTION
  tags_hub_generic = module.naming-hub.tags_hub_generic

  #MODULE GENERIC
  tags_module_generic = merge(local.tags_hub_generic,
    {
      terraform-module = "azure-hub-base",
  })

  #SUBENV GENERIC
  tags_subenv_main_generic            = merge(local.tags_module_generic, module.naming-hub.tags_subenv["main"])
  tags_subenv_gateway_generic         = merge(local.tags_module_generic, module.naming-hub.tags_subenv["gateway"])
  tags_subenv_shared_services_generic = merge(local.tags_module_generic, module.naming-hub.tags_subenv["shared_services"])
  tags_subenv_dmz_generic             = merge(local.tags_module_generic, module.naming-hub.tags_subenv["dmz"])

  #RGS
  tags_resource_group_main            = local.tags_subenv_main_generic
  tags_resource_group_gateway         = local.tags_subenv_gateway_generic
  tags_resource_group_shared_services = local.tags_subenv_shared_services_generic
  tags_resource_group_dmz             = local.tags_subenv_dmz_generic

  #DPP
  tags_ddos_protection_plan_main = local.tags_subenv_main_generic
}
