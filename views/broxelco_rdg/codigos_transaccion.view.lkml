view: codigos_transaccion {
  sql_table_name: broxelco_rdg.CodigosTransaccion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: ajuste {
    type: number
    sql: ${TABLE}.Ajuste ;;
  }

  dimension: cod_mc {
    type: string
    sql: ${TABLE}.CodMC ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: denom_dev_transacccion {
    type: string
    sql: ${TABLE}.DenomDevTransacccion ;;
  }

  dimension: denom_transac_mc {
    type: string
    sql: ${TABLE}.DenomTransacMC ;;
  }

  dimension: denom_transaccion {
    type: string
    sql: ${TABLE}.DenomTransaccion ;;
  }

  dimension: exceso_limite_compra {
    type: number
    sql: ${TABLE}.ExcesoLimiteCompra ;;
  }

  dimension_group: feca_actualiza {
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
    sql: ${TABLE}.FecaActualiza ;;
  }

  dimension: financialble {
    type: number
    sql: ${TABLE}.Financialble ;;
  }

  dimension: modificacion {
    type: string
    sql: ${TABLE}.Modificacion ;;
  }

  dimension: requiere_autorizacion {
    type: number
    sql: ${TABLE}.RequiereAutorizacion ;;
  }

  dimension: retiene_iva {
    type: number
    sql: ${TABLE}.RetieneIVA ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
