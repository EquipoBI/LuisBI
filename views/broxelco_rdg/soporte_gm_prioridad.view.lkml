view: soporte_gm_prioridad {
  sql_table_name: broxelco_rdg.Soporte_GM_Prioridad ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension: prioridad {
    type: string
    sql: ${TABLE}.Prioridad ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
