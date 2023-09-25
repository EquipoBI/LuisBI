connection: "biplata"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: sociales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sociales_default_datagroup

explore: programas_sociales_v4 {}
