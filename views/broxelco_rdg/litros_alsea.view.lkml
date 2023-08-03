view: litros_alsea {
  sql_table_name: broxelco_rdg.LitrosAlsea ;;

  dimension: ciclo {
    type: string
    sql: ${TABLE}.ciclo ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: cuenta {
    type: number
    sql: ${TABLE}.cuenta ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: litros {
    type: number
    sql: ${TABLE}.litros ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  dimension: precio_unitario {
    type: number
    sql: ${TABLE}.precioUnitario ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.tarjeta ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
