resource "bitwarden_item_login" "login_entry" {
  organization_id = bitwarden_org_collection.this_lab.organization_id
  collection_ids = [
    bitwarden_org_collection.this_lab.id
  ]
  name     = "Test Login for Random User ${random_password.random_user.result}"
  username = random_password.random_user.result
  password = random_password.random_password.result
  notes    = "Random notes for ${random_password.random_user.result} login entry."
  uri {
    value = "https://localhost/"
  }
}

resource "bitwarden_org_collection" "this_lab" {
  # conditional creation
  name            = "Test Collection/${var.PROJECT_NAME}"
  organization_id = data.bitwarden_organization.this_org.id
  member {
    id = var.BW_USER_ID
    hide_passwords = false
    read_only = false
    manage = true
  }
  member_group {
    id = var.BW_GROUP_ID
    hide_passwords = false
    read_only = false
    manage = true
  }
  lifecycle {
    ignore_changes = [
      member,
      member_group
    ]
  }
}

data "bitwarden_organization" "this_org" {
  # provider    = bitwarden.password_manager
  id = var.BW_ORG_ID
}
