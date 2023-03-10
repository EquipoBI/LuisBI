view: engloba_clave {
  sql_table_name: recursos.EnglobaClave ;;

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}."CLAVE CLIENTE" ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.CLIENTE ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.PRODUCTO ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.TIPO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
