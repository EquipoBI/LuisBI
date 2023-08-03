view: disponibles {
  sql_table_name: broxelco_rdg.Disponibles ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: limite_compra {
    type: number
    sql: ${TABLE}.LimiteCompra ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: saldo_disponible {
    type: number
    sql: ${TABLE}.SaldoDisponible ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
