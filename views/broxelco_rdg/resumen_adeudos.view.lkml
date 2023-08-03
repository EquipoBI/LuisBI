view: resumen_adeudos {
  sql_table_name: broxelco_rdg.ResumenAdeudos ;;

  dimension: casa {
    type: string
    sql: ${TABLE}.CASA ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.CELULAR ;;
  }

  dimension: cod_agencia {
    type: string
    sql: ${TABLE}.Cod_Agencia ;;
  }

  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.COD_CLIENTE ;;
  }

  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.Cod_Empresa ;;
  }

  dimension: cve_per_cuota {
    type: string
    sql: ${TABLE}.CvePerCuota ;;
  }

  dimension: des_correo {
    type: string
    sql: ${TABLE}.DES_CORREO ;;
  }

  dimension_group: dia_ult_pago {
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
    sql: ${TABLE}.DIA_ULT_PAGO ;;
  }

  dimension: mon_deduccion {
    type: number
    sql: ${TABLE}.Mon_Deduccion ;;
  }

  dimension: nom_cliente {
    type: string
    sql: ${TABLE}.NOM_CLIENTE ;;
  }

  dimension: num_credito {
    type: number
    sql: ${TABLE}.Num_Credito ;;
  }

  dimension: num_pagos_atrasados {
    type: number
    sql: ${TABLE}.NumPagosAtrasados ;;
  }

  dimension: oficina {
    type: string
    sql: ${TABLE}.OFICINA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
