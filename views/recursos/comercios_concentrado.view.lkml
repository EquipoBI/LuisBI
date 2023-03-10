view: comercios_concentrado {
  sql_table_name: recursos.ComerciosConcentrado ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
