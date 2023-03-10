view: cf_catal_transacciones {
  sql_table_name: broxelco_rdg.CF_CATAL_TRANSACCIONES ;;

  dimension: cod_sistema {
    type: string
    sql: ${TABLE}.COD_SISTEMA ;;
  }

  dimension: des_transaccion {
    type: string
    sql: ${TABLE}.DES_TRANSACCION ;;
  }

  dimension: ind_calculo_cat_gat {
    type: string
    sql: ${TABLE}.ind_calculo_cat_gat ;;
  }

  dimension: ind_movimiento {
    type: string
    sql: ${TABLE}.IND_MOVIMIENTO ;;
  }

  dimension: tip_transaccion {
    type: string
    sql: ${TABLE}.TIP_TRANSACCION ;;
  }

  dimension: tipo_movimiento_bw {
    type: string
    sql: ${TABLE}.TIPO_MOVIMIENTO_BW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
