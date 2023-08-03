view: pa_provincias {
  sql_table_name: broxelco_rdg.pa_provincias ;;

  dimension: cod_pais {
    type: string
    sql: ${TABLE}.COD_PAIS ;;
  }

  dimension: cod_provincia {
    type: string
    sql: ${TABLE}.COD_PROVINCIA ;;
  }

  dimension: des_grado_marginacion {
    type: string
    sql: ${TABLE}.DES_GRADO_MARGINACION ;;
  }

  dimension: des_provincia {
    type: string
    sql: ${TABLE}.DES_PROVINCIA ;;
  }

  dimension: ind_estado {
    type: string
    sql: ${TABLE}.IND_ESTADO ;;
  }

  dimension: ind_saf {
    type: string
    sql: ${TABLE}.IND_SAF ;;
  }

  dimension: nivel_riesgo {
    type: number
    sql: ${TABLE}.NIVEL_RIESGO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
