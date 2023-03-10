view: cat_estados_stp {
  sql_table_name: broxelco_rdg.CatEstadosSTP ;;

  dimension: abreviatura_curp {
    type: string
    sql: ${TABLE}.AbreviaturaCurp ;;
  }

  dimension: cod_provincia_saf {
    type: string
    sql: ${TABLE}.CodProvinciaSAF ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: id_estado_stp {
    type: string
    sql: ${TABLE}.IdEstadoSTP ;;
  }

  dimension: id_pais_stp {
    type: number
    sql: ${TABLE}.IdPaisSTP ;;
  }

  dimension: idpais_saf {
    type: number
    sql: ${TABLE}.IdpaisSAF ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
