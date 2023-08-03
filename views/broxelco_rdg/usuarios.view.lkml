view: usuarios {
  sql_table_name: broxelco_rdg.usuarios ;;

  dimension: celular {
    type: number
    sql: ${TABLE}.Celular ;;
  }

  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.CorreoElectronico ;;
  }

  dimension: numero_cuenta {
    type: string
    sql: ${TABLE}.NumeroCuenta ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.RFC ;;
  }

  dimension: telefono {
    type: number
    sql: ${TABLE}.Telefono ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
