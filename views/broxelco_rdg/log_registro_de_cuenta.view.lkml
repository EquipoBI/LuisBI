view: log_registro_de_cuenta {
  sql_table_name: broxelco_rdg.log_registro_de_cuenta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cod_gasto_administrativo {
    type: string
    sql: ${TABLE}.cod_gasto_administrativo ;;
  }

  dimension: codigo_actualizacion {
    type: string
    sql: ${TABLE}.codigo_actualizacion ;;
  }

  dimension: codigo_condicion_tributaria {
    type: string
    sql: ${TABLE}.codigo_condicion_tributaria ;;
  }

  dimension: den_barrio {
    type: string
    sql: ${TABLE}.den_barrio ;;
  }

  dimension: dias_mora {
    type: string
    sql: ${TABLE}.dias_mora ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension: estado_saldos {
    type: string
    sql: ${TABLE}.estado_saldos ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_bloqueo {
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
    sql: ${TABLE}.fecha_bloqueo ;;
  }

  dimension_group: fecha_desbloqueo {
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
    sql: ${TABLE}.fecha_desbloqueo ;;
  }

  dimension_group: fecha_ultima_liquidacion {
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
    sql: ${TABLE}.fecha_ultima_liquidacion ;;
  }

  dimension_group: fecha_ultimo_pago {
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
    sql: ${TABLE}.fecha_ultimo_pago ;;
  }

  dimension_group: fecha_ultimo_pago_us {
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
    sql: ${TABLE}.fecha_ultimo_pago_us ;;
  }

  dimension_group: fecha_vto_liq_actual {
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
    sql: ${TABLE}.fecha_vto_liq_actual ;;
  }

  dimension_group: fecha_vto_liq_anterior {
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
    sql: ${TABLE}.fecha_vto_liq_anterior ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.filler ;;
  }

  dimension: filler2 {
    type: string
    sql: ${TABLE}.filler2 ;;
  }

  dimension_group: fuicpra {
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
    sql: ${TABLE}.fuicpra ;;
  }

  dimension_group: fuipres {
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
    sql: ${TABLE}.fuipres ;;
  }

  dimension: imp_cuenta {
    type: string
    sql: ${TABLE}.imp_cuenta ;;
  }

  dimension: importe_ajustes_neg {
    type: number
    sql: ${TABLE}.importe_ajustes_neg ;;
  }

  dimension: importe_ajustes_neg_us {
    type: number
    sql: ${TABLE}.importe_ajustes_neg_us ;;
  }

  dimension: importe_ajustes_pos_fin {
    type: number
    sql: ${TABLE}.importe_ajustes_pos_fin ;;
  }

  dimension: importe_ajustes_pos_fin_us {
    type: number
    sql: ${TABLE}.importe_ajustes_pos_fin_us ;;
  }

  dimension: importe_cuotas_pend_anticipada {
    type: number
    sql: ${TABLE}.importe_cuotas_pend_anticipada ;;
  }

  dimension: importe_cuotas_pend_anticipada_us {
    type: number
    sql: ${TABLE}.importe_cuotas_pend_anticipada_us ;;
  }

  dimension: importe_cuotas_pend_normal {
    type: number
    sql: ${TABLE}.importe_cuotas_pend_normal ;;
  }

  dimension: importe_cuotas_pend_prest {
    type: number
    sql: ${TABLE}.importe_cuotas_pend_prest ;;
  }

  dimension: importe_cuotas_pend_prest_us {
    type: number
    sql: ${TABLE}.importe_cuotas_pend_prest_us ;;
  }

  dimension: importe_cuotas_pendiente_normal_us {
    type: number
    sql: ${TABLE}.importe_cuotas_pendiente_normal_us ;;
  }

  dimension: importe_gastos_admin_us {
    type: number
    sql: ${TABLE}.importe_gastos_admin_us ;;
  }

  dimension: importe_gastos_administ {
    type: number
    sql: ${TABLE}.importe_gastos_administ ;;
  }

  dimension: importe_intereses_adelan {
    type: number
    sql: ${TABLE}.importe_intereses_adelan ;;
  }

  dimension: importe_intereses_finan {
    type: number
    sql: ${TABLE}.importe_intereses_finan ;;
  }

  dimension: importe_intereses_finan_us {
    type: number
    sql: ${TABLE}.importe_intereses_finan_us ;;
  }

  dimension: importe_intereses_punit {
    type: number
    sql: ${TABLE}.importe_intereses_punit ;;
  }

  dimension: importe_intereses_punit_us {
    type: number
    sql: ${TABLE}.importe_intereses_punit_us ;;
  }

  dimension: importe_limite_compra {
    type: number
    sql: ${TABLE}.importe_limite_compra ;;
  }

  dimension: importe_limite_de_credito {
    type: number
    sql: ${TABLE}.importe_limite_de_credito ;;
  }

  dimension: importe_limite_de_prestamos {
    type: number
    sql: ${TABLE}.importe_limite_de_prestamos ;;
  }

  dimension: importe_movimientos_fin_us {
    type: number
    sql: ${TABLE}.importe_movimientos_fin_us ;;
  }

  dimension: importe_movimientos_finan {
    type: number
    sql: ${TABLE}.importe_movimientos_finan ;;
  }

  dimension: importe_movimientos_no_fin_us {
    type: number
    sql: ${TABLE}.importe_movimientos_no_fin_us ;;
  }

  dimension: importe_pago_min_imp_cier_ant {
    type: number
    sql: ${TABLE}.importe_pago_min_imp_cier_ant ;;
  }

  dimension: importe_pago_minim_us {
    type: number
    sql: ${TABLE}.importe_pago_minim_us ;;
  }

  dimension: importe_pago_minimo {
    type: number
    sql: ${TABLE}.importe_pago_minimo ;;
  }

  dimension: importe_pago_minimo_ant_imp_us {
    type: number
    sql: ${TABLE}.importe_pago_minimo_ant_imp_us ;;
  }

  dimension: importe_pago_minimo_ant_imppago {
    type: number
    sql: ${TABLE}.importe_pago_minimo_ant_imppago ;;
  }

  dimension: importe_pago_minimo_cier_ant_us {
    type: number
    sql: ${TABLE}.importe_pago_minimo_cier_ant_us ;;
  }

  dimension: importe_pagos_liquidados_us {
    type: number
    sql: ${TABLE}.importe_pagos_liquidados_us ;;
  }

  dimension: importe_pagos_liquiddos {
    type: number
    sql: ${TABLE}.importe_pagos_liquiddos ;;
  }

  dimension: importe_retencion_iva {
    type: number
    sql: ${TABLE}.importe_retencion_iva ;;
  }

  dimension: importe_riesgo_conting {
    type: number
    sql: ${TABLE}.importe_riesgo_conting ;;
  }

  dimension: importe_riesgo_conting_us {
    type: number
    sql: ${TABLE}.importe_riesgo_conting_us ;;
  }

  dimension: importe_saldo_actual {
    type: number
    sql: ${TABLE}.importe_saldo_actual ;;
  }

  dimension: importe_saldo_actual_us {
    type: number
    sql: ${TABLE}.importe_saldo_actual_us ;;
  }

  dimension: importe_saldo_anterior {
    type: number
    sql: ${TABLE}.importe_saldo_anterior ;;
  }

  dimension: importe_saldo_anterior_us {
    type: number
    sql: ${TABLE}.importe_saldo_anterior_us ;;
  }

  dimension: importe_sellado_adelanto {
    type: number
    sql: ${TABLE}.importe_sellado_adelanto ;;
  }

  dimension: importe_sellado_finan {
    type: number
    sql: ${TABLE}.importe_sellado_finan ;;
  }

  dimension: importe_sello_finan_us {
    type: number
    sql: ${TABLE}.importe_sello_finan_us ;;
  }

  dimension: impote_ajustes_pos_no_fin {
    type: number
    sql: ${TABLE}.impote_ajustes_pos_no_fin ;;
  }

  dimension: impote_movimientos_no_finan {
    type: number
    sql: ${TABLE}.impote_movimientos_no_finan ;;
  }

  dimension: intereses_financiacion_exentos {
    type: number
    sql: ${TABLE}.intereses_financiacion_exentos ;;
  }

  dimension: intereses_financiacion_gravados {
    type: number
    sql: ${TABLE}.intereses_financiacion_gravados ;;
  }

  dimension: intereses_punitorios_exentos {
    type: number
    sql: ${TABLE}.intereses_punitorios_exentos ;;
  }

  dimension: intereses_punitorios_gravados {
    type: number
    sql: ${TABLE}.intereses_punitorios_gravados ;;
  }

  dimension: iva_intereses_finac_gravados {
    type: number
    sql: ${TABLE}.iva_intereses_finac_gravados ;;
  }

  dimension: iva_intereses_punitorios_gravados {
    type: number
    sql: ${TABLE}.iva_intereses_punitorios_gravados ;;
  }

  dimension: marca_habilitacion_compra {
    type: string
    sql: ${TABLE}.marca_habilitacion_compra ;;
  }

  dimension: marca_refinanciacion {
    type: string
    sql: ${TABLE}.marca_refinanciacion ;;
  }

  dimension: meses_de_mora {
    type: number
    sql: ${TABLE}.meses_de_mora ;;
  }

  dimension: nivel_de_alerta {
    type: string
    sql: ${TABLE}.nivel_de_alerta ;;
  }

  dimension: num_referencia_abm {
    type: string
    sql: ${TABLE}.num_referencia_ABM ;;
  }

  dimension: numero_de_cuenta {
    type: string
    sql: ${TABLE}.numero_de_cuenta ;;
  }

  dimension: pmi3 {
    type: number
    sql: ${TABLE}.pmi3 ;;
  }

  dimension: pmi4 {
    type: number
    sql: ${TABLE}.pmi4 ;;
  }

  dimension: pmi5 {
    type: number
    sql: ${TABLE}.pmi5 ;;
  }

  dimension: pmi6 {
    type: number
    sql: ${TABLE}.pmi6 ;;
  }

  dimension: porc_limite_adelantos {
    type: number
    sql: ${TABLE}.porc_limite_adelantos ;;
  }

  dimension: signo_saldo {
    type: string
    sql: ${TABLE}.signo_saldo ;;
  }

  dimension: signo_saldo_us {
    type: string
    sql: ${TABLE}.signo_saldo_us ;;
  }

  dimension: timbrado {
    type: string
    sql: ${TABLE}.timbrado ;;
  }

  dimension: timbre {
    type: string
    sql: ${TABLE}.timbre ;;
  }

  dimension_group: ultima_actualizacion {
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
    sql: ${TABLE}.ultima_actualizacion ;;
  }

  dimension: vumero_de_cuit {
    type: string
    sql: ${TABLE}.vumero_de_cuit ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
