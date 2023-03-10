view: dispersiones {
  sql_table_name: broxelco_rdg.dispersiones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: codigo_banco {
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }

  dimension: credito_infonavit {
    type: string
    sql: ${TABLE}.credito_infonavit ;;
  }

  dimension_group: fecha_dispersion {
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
    sql: ${TABLE}.fecha_dispersion ;;
  }

  dimension_group: fecha_ultimo_movimiento {
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
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }

  dimension: flag_reportada {
    type: string
    sql: ${TABLE}.flag_reportada ;;
  }

  dimension: flag_tm {
    type: string
    sql: ${TABLE}.flag_tm ;;
  }

  dimension: monto_atm {
    type: number
    sql: ${TABLE}.monto_atm ;;
  }

  dimension: monto_pos {
    type: number
    sql: ${TABLE}.monto_pos ;;
  }

  dimension: monto_total {
    type: number
    sql: ${TABLE}.monto_total ;;
  }

  dimension: nombre_completo {
    type: string
    sql: ${TABLE}.nombre_completo ;;
  }

  dimension: notas {
    type: string
    sql: ${TABLE}.notas ;;
  }

  dimension: num_tarjeta {
    type: string
    sql: ${TABLE}.num_tarjeta ;;
  }

  dimension: numero_de_cuenta {
    type: string
    sql: ${TABLE}.numero_de_cuenta ;;
  }

  dimension: numero_telefono {
    type: string
    sql: ${TABLE}.numero_telefono ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: saldo_restante {
    type: number
    sql: ${TABLE}.saldo_restante ;;
  }

  dimension: total_movimientos {
    type: number
    sql: ${TABLE}.total_movimientos ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
