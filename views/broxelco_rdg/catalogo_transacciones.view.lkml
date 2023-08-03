view: catalogo_transacciones {
  sql_table_name: broxelco_rdg.CatalogoTransacciones ;;

  dimension: ajuste {
    type: number
    sql: ${TABLE}.Ajuste ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: den_transac_reverso {
    type: string
    sql: ${TABLE}.DenTransacReverso ;;
  }

  dimension: denominacion_transaccion {
    type: string
    sql: ${TABLE}.DenominacionTransaccion ;;
  }

  dimension: exceso_limite_compra {
    type: number
    sql: ${TABLE}.ExcesoLimiteCompra ;;
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
    sql: ${TABLE}.Fecha ;;
  }

  dimension: financiable {
    type: number
    sql: ${TABLE}.Financiable ;;
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
    drill_fields: []
  }
}
