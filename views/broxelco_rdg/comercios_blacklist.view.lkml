view: comercios_blacklist {
  sql_table_name: broxelco_rdg.comerciosBlacklist ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
