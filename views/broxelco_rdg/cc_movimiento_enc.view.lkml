view: cc_movimiento_enc {
  sql_table_name: broxelco_rdg.CC_MOVIMIENTO_ENC ;;

  dimension: canal_transaccional {
    type: string
    sql: ${TABLE}.CANAL_TRANSACCIONAL ;;
  }

  dimension: cod_agencia {
    type: string
    sql: ${TABLE}.Cod_Agencia ;;
  }

  dimension: cod_agencia_anulacion {
    type: string
    sql: ${TABLE}.Cod_Agencia_Anulacion ;;
  }

  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.Cod_Empresa ;;
  }

  dimension: cod_sistema_origen {
    type: string
    sql: ${TABLE}.Cod_Sistema_Origen ;;
  }

  dimension: cod_usuario {
    type: string
    sql: ${TABLE}.Cod_Usuario ;;
  }

  dimension: cod_usuario_anulacion {
    type: string
    sql: ${TABLE}.Cod_Usuario_Anulacion ;;
  }

  dimension: cod_usuario_autoriza {
    type: string
    sql: ${TABLE}.Cod_Usuario_Autoriza ;;
  }

  dimension: cod_valor {
    type: string
    sql: ${TABLE}.Cod_Valor ;;
  }

  dimension: des_movimiento {
    type: string
    sql: ${TABLE}.Des_Movimiento ;;
  }

  dimension: est_movimiento {
    type: string
    sql: ${TABLE}.Est_Movimiento ;;
  }

  dimension_group: fec_anulacion {
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
    sql: ${TABLE}.Fec_Anulacion ;;
  }

  dimension_group: fec_movimiento {
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
    sql: ${TABLE}.Fec_Movimiento ;;
  }

  dimension_group: fec_operacion {
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
    sql: ${TABLE}.Fec_Operacion ;;
  }

  dimension: id_mov_origen {
    type: number
    sql: ${TABLE}.Id_Mov_Origen ;;
  }

  dimension: id_rubro_origen {
    type: number
    sql: ${TABLE}.Id_Rubro_Origen ;;
  }

  dimension: id_secuencia {
    type: number
    sql: ${TABLE}.Id_Secuencia ;;
  }

  dimension: ind_asiento_completo {
    type: string
    sql: ${TABLE}.IND_ASIENTO_COMPLETO ;;
  }

  dimension: ind_contabilizado {
    type: string
    sql: ${TABLE}.IND_CONTABILIZADO ;;
  }

  dimension: ind_enc_asiento {
    type: string
    sql: ${TABLE}.IND_ENC_ASIENTO ;;
  }

  dimension: ind_visible_est_cta {
    type: string
    sql: ${TABLE}.Ind_Visible_Est_Cta ;;
  }

  dimension: mon_moneda_local {
    type: number
    sql: ${TABLE}.Mon_Moneda_Local ;;
  }

  dimension: mon_movimiento {
    type: number
    sql: ${TABLE}.Mon_Movimiento ;;
  }

  dimension: num_asiento {
    type: number
    sql: ${TABLE}.Num_Asiento ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.Num_Cuenta ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }

  dimension: subtip_transac {
    type: string
    sql: ${TABLE}.Subtip_Transac ;;
  }

  dimension: tip_secuencia {
    type: string
    sql: ${TABLE}.TIP_SECUENCIA ;;
  }

  dimension: tip_transaccion {
    type: string
    sql: ${TABLE}.Tip_Transaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
