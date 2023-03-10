view: asignar_cuentas_acliente {
  sql_table_name: broxelco_rdg.AsignarCuentasACliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension_group: fecha_hora {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FechaHora ;;
  }

  dimension: num_cuentas {
    type: string
    sql: ${TABLE}.NumCuentas ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
