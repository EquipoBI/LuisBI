view: soporte_gm_estatus {
  sql_table_name: broxelco_rdg.Soporte_GM_Estatus ;;
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

  dimension: n1 {
    type: number
    sql: ${TABLE}.N1 ;;
  }

  dimension: nombre_estatus {
    type: string
    sql: ${TABLE}.NombreEstatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
