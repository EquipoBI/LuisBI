view: info_comercios {
  sql_table_name: recursos.InfoComercios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.COMERCIO ;;
  }

  dimension: latitud {
    type: string
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: string
    sql: ${TABLE}.Longitud ;;
  }

  dimension: ubicacion {
    type: string
    sql: ${TABLE}.Ubicacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
