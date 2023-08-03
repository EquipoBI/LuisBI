view: cuentas_vales_maquila {
  sql_table_name: recursos.cuentas_vales_maquila ;;

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension: nombre_tarjethabiente {
    type: string
    sql: ${TABLE}.nombre_tarjethabiente ;;
  }

  dimension: nombre_titular {
    type: string
    sql: ${TABLE}.nombre_titular ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
