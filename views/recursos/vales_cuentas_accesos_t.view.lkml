view: vales_cuentas_accesos_t {
  sql_table_name: recursos.vales_cuentas_accesos_t ;;

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

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

  dimension: nombre_completo {
    type: string
    sql: ${TABLE}.nombre_completo ;;
  }

  dimension: nombre_tarjethabiente {
    type: string
    sql: ${TABLE}.nombre_tarjethabiente ;;
  }

  dimension: nombre_titular {
    type: string
    sql: ${TABLE}.nombre_titular ;;
  }

  dimension: nomcomp {
    type: string
    sql: ${TABLE}.nomcomp ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
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
