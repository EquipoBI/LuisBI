view: rr_localidades_2015_inter {
  sql_table_name: broxelco_rdg.RR_LOCALIDADES_2015_INTER ;;

  dimension: cod_colonia {
    type: string
    sql: ${TABLE}.COD_COLONIA ;;
  }

  dimension: cod_provincia {
    type: string
    sql: ${TABLE}.COD_PROVINCIA ;;
  }

  dimension: distrito {
    type: string
    sql: ${TABLE}.DISTRITO ;;
  }

  dimension: id_pais_stp {
    type: number
    sql: ${TABLE}.IdPaisSTP ;;
  }

  dimension: id_prov_stp {
    type: number
    sql: ${TABLE}.IdProvSTP ;;
  }

  dimension: id_provincia {
    type: string
    sql: ${TABLE}.ID_PROVINCIA ;;
  }

  dimension: pa_cod_pais {
    type: string
    sql: ${TABLE}.PA_COD_PAIS ;;
  }

  dimension: paca_cod_canton {
    type: string
    sql: ${TABLE}.PACA_COD_CANTON ;;
  }

  dimension: rrlo_id_canton {
    type: string
    sql: ${TABLE}.RRLO_ID_CANTON ;;
  }

  dimension: rrlo_id_pais {
    type: string
    sql: ${TABLE}.RRLO_ID_PAIS ;;
  }

  dimension: rrlo_identificador {
    type: string
    sql: ${TABLE}.RRLO_IDENTIFICADOR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
