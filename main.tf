resource "aws_ssm_parameter" "params" {
  count     = length(var.params)
  name      = var.params[count.index].name
  type      = var.params[count.index].type
  value     = var.params[count.index].value
  overwrite = true
  key_id    = "5ec11a95-aaa2-436e-b543-a07b1932618f"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsd7.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsd7.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsd7.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsd7.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsd7.online/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.yqg60x.clustercfg.use1.cache.amazonaws.com", type = "String" },
    //{ name = "roboshop.dev.cart.redis_host", value = "redis-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com", type = "String" },
   // { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopsd7.online:27017/catalogue", type = "String" },
    
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopsd7.online:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cfw4cgmy43ga.us-east-1.rds.amazonaws.com", type = "String" },
    # { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    //{ name = "roboshop.dev.user.redis_host", value = "redis-dev.devopsd7.online", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.yqg60x.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com", type = "String" },
    //{ name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devopsd7.online:27017/users", type = "String" },
   
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cfw4cgmy43ga.us-east-1.rds.amazonaws.com", type = "String" },
    
    ### Passwords will be never part of git repos, Usually in organizations we create them nanually. Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    //{ name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
   // { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
  
  
  
  
  
  
  
  
   ###
    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.devopsd7.online/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.devopsd7.online/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.devopsd7.online/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.devopsd7.online/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.devopsd7.online/", type = "String" },
    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod-instance.yqg60x.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.devopsd7.online", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.devopsd7.online", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-dev.devopsd7.online", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.devopsd7.online", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart:8080", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cfw4cgmy43ga.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod-instance.yqg60x.0001.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cfw4cgmy43ga.us-east-1.rds.amazonaws.com", type = "String" },

    ### Passwords will be never part of git repos, Usually in organizations we create them nanually. Meaning whom ever have access they will provision these secrets in parameter store.
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cfw4cgmy43ga.us-east-1.docdb.amazonaws.com", type = "String" },


    # ## Nexus
    { name = "roboshop.nexus.username", value = "admin", type = "SecureString" },
    { name = "roboshop.nexus.password", value = "admin123", type = "SecureString" },

    # ## App Versions
    { name = "roboshop.prod.payment.app_version", value = "2.0.0", type = "String" },
    { name = "roboshop.prod.shipping.app_version", value = "2.0.0", type = "String" },
    { name = "roboshop.prod.cart.app_version", value = "2.0.0", type = "String" },
    { name = "roboshop.prod.user.app_version", value = "2.0.0", type = "String" },
    { name = "roboshop.prod.catalogue.app_version", value = "2.0.0", type = "String" },
    { name = "roboshop.prod.frontend.app_version", value = "2.0.0", type = "String" },
  
  
  
  
  
  ]
}