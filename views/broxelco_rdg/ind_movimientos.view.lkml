view: ind_movimientos {
  sql_table_name: broxelco_rdg.ind_movimientos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: can_cuotas_plan {
    type: number
    sql: ${TABLE}.CanCuotasPlan ;;
  }

  dimension: cod_debaut {
    type: number
    sql: ${TABLE}.CodDebaut ;;
  }

  dimension: cod_mc {
    type: string
    sql: ${TABLE}.CodMC ;;
  }

  dimension: cod_mon_origen {
    type: string
    sql: ${TABLE}.CodMonOrigen ;;
  }

  dimension: cod_mont {
    type: string
    sql: ${TABLE}.CodMont ;;
  }

  dimension: cod_producto_com {
    type: string
    sql: ${TABLE}.CodProductoCom ;;
  }

  dimension: cod_pto_cuota {
    type: string
    sql: ${TABLE}.CodPtoCuota ;;
  }

  dimension: cod_rubro {
    type: string
    sql: ${TABLE}.CodRubro ;;
  }

  dimension: cod_transac {
    type: string
    sql: ${TABLE}.CodTransac ;;
  }

  dimension: cod_zeogeo_dest {
    type: string
    sql: ${TABLE}.CodZeogeoDest ;;
  }

  dimension: cod_zogeo_orig {
    type: string
    sql: ${TABLE}.CodZogeoOrig ;;
  }

  dimension: com_mc {
    type: string
    sql: ${TABLE}.ComMC ;;
  }

  dimension: comerciocodpost {
    type: string
    sql: ${TABLE}."Comercio-Cod-Post" ;;
  }

  dimension: comerciodebcalle {
    type: string
    sql: ${TABLE}."Comercio-Deb-Calle" ;;
  }

  dimension: comerciodenbenef {
    type: string
    sql: ${TABLE}."Comercio-Den-Benef" ;;
  }

  dimension: comerciolocalidad {
    type: string
    sql: ${TABLE}."Comercio-Localidad" ;;
  }

  dimension: comercionro_puerta {
    type: string
    sql: ${TABLE}."Comercio-Nro_Puerta" ;;
  }

  dimension: comerciopais {
    type: string
    sql: ${TABLE}."Comercio-Pais" ;;
  }

  dimension: comerciozona {
    type: string
    sql: ${TABLE}."Comercio-Zona" ;;
  }

  dimension: ctabancaria {
    type: string
    sql: ${TABLE}."Cta-Bancaria" ;;
  }

  dimension: ctabancaria2 {
    type: string
    sql: ${TABLE}."Cta-Bancaria2" ;;
  }

  dimension: cuota {
    type: number
    sql: ${TABLE}.Cuota ;;
  }

  dimension: de22 {
    type: string
    sql: ${TABLE}.DE22 ;;
  }

  dimension: den_mov {
    type: string
    sql: ${TABLE}.DenMov ;;
  }

  dimension: den_mov_adl {
    type: string
    sql: ${TABLE}.DenMovAdl ;;
  }

  dimension: est_proc {
    type: string
    sql: ${TABLE}.EstProc ;;
  }

  dimension_group: fclear {
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
    sql: ${TABLE}.FClear ;;
  }

  dimension_group: fe_pago {
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
    sql: ${TABLE}.FePago ;;
  }

  dimension_group: fe_pres {
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
    sql: ${TABLE}.FePres ;;
  }

  dimension_group: fe_proc {
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
    sql: ${TABLE}.FeProc ;;
  }

  dimension_group: fe_venc {
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
    sql: ${TABLE}.FeVenc ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.Filler ;;
  }

  dimension_group: flicom {
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
    sql: ${TABLE}.Flicom ;;
  }

  dimension_group: fliqusu {
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
    sql: ${TABLE}.Fliqusu ;;
  }

  dimension: forinen_postnet {
    type: string
    sql: ${TABLE}.Forinen_Postnet ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: hora {
    type: string
    sql: ${TABLE}.Hora ;;
  }

  dimension: icaadq {
    type: string
    sql: ${TABLE}.ICAAdq ;;
  }

  dimension: imp_cotiz {
    type: number
    sql: ${TABLE}.ImpCotiz ;;
  }

  dimension: imp_field {
    type: string
    sql: ${TABLE}.imp_field ;;
  }

  dimension: imp_fijo_asoc_vta {
    type: number
    sql: ${TABLE}.ImpFijoAsocVta ;;
  }

  dimension: imp_int_pag_ade {
    type: number
    sql: ${TABLE}.ImpIntPagAde ;;
  }

  dimension: imp_iva_usu {
    type: number
    sql: ${TABLE}.ImpIvaUsu ;;
  }

  dimension: imp_sdes {
    type: number
    sql: ${TABLE}.ImpSdes ;;
  }

  dimension: imp_total {
    type: number
    sql: ${TABLE}.ImpTotal ;;
  }

  dimension: imp_total_liqusu {
    type: number
    sql: ${TABLE}.ImpTotalLiqusu ;;
  }

  dimension: imp_total_orig {
    type: number
    sql: ${TABLE}.ImpTotalOrig ;;
  }

  dimension: imp_total_vta {
    type: number
    sql: ${TABLE}.ImpTotalVta ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.importe_pesos ;;
  }

  dimension: mar_cuo_anti {
    type: string
    sql: ${TABLE}.MarCuoAnti ;;
  }

  dimension: mar_exc_lim_comp {
    type: string
    sql: ${TABLE}.Mar_ExcLimComp ;;
  }

  dimension: mar_financiable {
    type: string
    sql: ${TABLE}.Mar_Financiable ;;
  }

  dimension: mar_retiva {
    type: string
    sql: ${TABLE}.MarRetiva ;;
  }

  dimension: mot_contrap {
    type: string
    sql: ${TABLE}.Mot_Contrap ;;
  }

  dimension: nro_aut {
    type: string
    sql: ${TABLE}.NroAut ;;
  }

  dimension: nro_banco_suc_mov {
    type: string
    sql: ${TABLE}.NroBancoSucMov ;;
  }

  dimension: nro_bco_suc_ruc {
    type: string
    sql: ${TABLE}.NroBcoSucRuc ;;
  }

  dimension: nro_boleta {
    type: string
    sql: ${TABLE}.NroBoleta ;;
  }

  dimension: nro_comp {
    type: string
    sql: ${TABLE}.NroComp ;;
  }

  dimension: nro_cupon {
    type: string
    sql: ${TABLE}.NroCupon ;;
  }

  dimension: nro_lote {
    type: string
    sql: ${TABLE}.NroLote ;;
  }

  dimension: nro_ruc {
    type: string
    sql: ${TABLE}.NroRuc ;;
  }

  dimension: nro_tar {
    type: string
    sql: ${TABLE}.NroTar ;;
  }

  dimension_group: origen {
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
    sql: ${TABLE}.Origen ;;
  }

  dimension: plazop {
    type: number
    sql: ${TABLE}.Plazop ;;
  }

  dimension: por_alicuota_iva {
    type: number
    sql: ${TABLE}.PorAlicuotaIVA ;;
  }

  dimension: por_ara_ade {
    type: number
    sql: ${TABLE}.PorAraAde ;;
  }

  dimension: por_dto {
    type: number
    sql: ${TABLE}.PorDto ;;
  }

  dimension: por_tas_int_emi_ade {
    type: number
    sql: ${TABLE}.PorTasIntEmiAde ;;
  }

  dimension: por_tas_int_pag_ade {
    type: number
    sql: ${TABLE}.PorTasIntPagAde ;;
  }

  dimension: por_tas_sel_ade {
    type: number
    sql: ${TABLE}.PorTasSelAde ;;
  }

  dimension: ref_univ_de32 {
    type: string
    sql: ${TABLE}.RefUnivDE32 ;;
  }

  dimension: reservado_casa {
    type: string
    sql: ${TABLE}.ReservadoCASA ;;
  }

  dimension: reservado_casa2 {
    type: string
    sql: ${TABLE}.ReservadoCASA2 ;;
  }

  dimension: reservado_casa3 {
    type: string
    sql: ${TABLE}.ReservadoCASA3 ;;
  }

  dimension: reservado_uso_casa4 {
    type: string
    sql: ${TABLE}.ReservadoUsoCASA4 ;;
  }

  dimension: reservado_uso_casa5 {
    type: string
    sql: ${TABLE}.ReservadoUsoCASA5 ;;
  }

  dimension: reservado_uso_casa6 {
    type: string
    sql: ${TABLE}.ReservadoUsoCASA6 ;;
  }

  dimension: tasa_intercambio {
    type: number
    sql: ${TABLE}.TasaIntercambio ;;
  }

  dimension: tip_reg {
    type: string
    sql: ${TABLE}.TipReg ;;
  }

  dimension: tip_vta {
    type: string
    sql: ${TABLE}.TipVta ;;
  }

  dimension: verificador_broxel {
    type: string
    sql: ${TABLE}.verificador_broxel ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
