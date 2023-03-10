view: codigos_respuesta {
  sql_table_name: broxelco_rdg.CodigosRespuesta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: causa_comun {
    type: string
    sql: ${TABLE}.CausaComun ;;
  }

  dimension: desc_corta {
    type: string
    sql: ${TABLE}.DescCorta ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
