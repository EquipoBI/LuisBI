view: soporte_gm_despacho {
  sql_table_name: broxelco_rdg.Soporte_GM_Despacho ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: despacho {
    type: string
    sql: ${TABLE}.Despacho ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
