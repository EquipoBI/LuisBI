view: vales_cuentas_accesos {
  sql_table_name: recursos.vales_cuentas_accesos ;;

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.clave_cliente ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
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

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
