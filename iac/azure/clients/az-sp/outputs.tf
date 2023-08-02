output "azuread_application_object_id" {
    value = data.azuread_service_principal.current_sp.id
}

output "azuread_application_displayname" {
    value = data.azuread_service_principal.current_sp.display_name
}