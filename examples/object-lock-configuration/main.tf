module "object_lock_configuration_example" {
  source  = "jeffabailey/s3-bucket/aws"
  version = "1.2.0"

  name = "oh-demos-object-lock-configuration-example"

  object_lock_configuration = {
    object_lock_enabled = "Enabled"

    rule = {
      default_retention = {
        mode = "GOVERNANCE"
        days = 366
      }
    }
  }
}
