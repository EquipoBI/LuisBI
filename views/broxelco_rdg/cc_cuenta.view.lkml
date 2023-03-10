view: cc_cuenta {
  sql_table_name: broxelco_rdg.CC_CUENTA ;;

  dimension: clabe {
    type: string
    sql: ${TABLE}.CLABE ;;
  }

  dimension: cod_agencia {
    type: string
    sql: ${TABLE}.COD_AGENCIA ;;
  }

  dimension: cod_categoria {
    type: string
    sql: ${TABLE}.COD_CATEGORIA ;;
  }

  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.COD_CLIENTE ;;
  }

  dimension: cod_direccion {
    type: string
    sql: ${TABLE}.COD_DIRECCION ;;
  }

  dimension: cod_direccion_est {
    type: string
    sql: ${TABLE}.COD_DIRECCION_EST ;;
  }

  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.COD_EMPRESA ;;
  }

  dimension: cod_estado {
    type: string
    sql: ${TABLE}.COD_ESTADO ;;
  }

  dimension: cod_moneda {
    type: string
    sql: ${TABLE}.COD_MONEDA ;;
  }

  dimension: cod_producto {
    type: string
    sql: ${TABLE}.COD_PRODUCTO ;;
  }

  dimension: cod_sistema {
    type: string
    sql: ${TABLE}.COD_SISTEMA ;;
  }

  dimension: cod_usuario {
    type: string
    sql: ${TABLE}.COD_USUARIO ;;
  }

  dimension: des_correo {
    type: string
    sql: ${TABLE}.DES_CORREO ;;
  }

  dimension_group: fec_apertura {
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
    sql: ${TABLE}.FEC_APERTURA ;;
  }

  dimension_group: fec_estado {
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
    sql: ${TABLE}.FEC_ESTADO ;;
  }

  dimension_group: fec_ini_sobgro {
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
    sql: ${TABLE}.FEC_INI_SOBGRO ;;
  }

  dimension_group: fec_ult_act_int {
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
    sql: ${TABLE}.FEC_ULT_ACT_INT ;;
  }

  dimension_group: fec_ult_cap_int {
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
    sql: ${TABLE}.FEC_ULT_CAP_INT ;;
  }

  dimension_group: fec_ult_movimiento {
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
    sql: ${TABLE}.FEC_ULT_MOVIMIENTO ;;
  }

  dimension: ind_correspondencia {
    type: string
    sql: ${TABLE}.IND_CORRESPONDENCIA ;;
  }

  dimension: ind_cta_alterna {
    type: string
    sql: ${TABLE}.IND_CTA_ALTERNA ;;
  }

  dimension: ind_estado {
    type: string
    sql: ${TABLE}.IND_ESTADO ;;
  }

  dimension: ind_gen_grafico {
    type: string
    sql: ${TABLE}.IND_GEN_GRAFICO ;;
  }

  dimension: ind_nombre_estado {
    type: string
    sql: ${TABLE}.IND_NOMBRE_ESTADO ;;
  }

  dimension: ind_pag_interes {
    type: string
    sql: ${TABLE}.IND_PAG_INTERES ;;
  }

  dimension: ind_sobgro {
    type: string
    sql: ${TABLE}.IND_SOBGRO ;;
  }

  dimension: ind_tip_cargos {
    type: string
    sql: ${TABLE}.IND_TIP_CARGOS ;;
  }

  dimension: mon_max_sobgro_temp {
    type: number
    sql: ${TABLE}.Mon_Max_Sobgro_Temp ;;
  }

  dimension: nom_chequera {
    type: string
    sql: ${TABLE}.NOM_CHEQUERA ;;
  }

  dimension: nom_estado {
    type: string
    sql: ${TABLE}.NOM_ESTADO ;;
  }

  dimension: num_cta_relacionada {
    type: string
    sql: ${TABLE}.NUM_CTA_RELACIONADA ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NUM_CUENTA ;;
  }

  dimension: obs_estado_cuenta {
    type: string
    sql: ${TABLE}.OBS_ESTADO_CUENTA ;;
  }

  dimension: tip_envio {
    type: string
    sql: ${TABLE}.TIP_ENVIO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
