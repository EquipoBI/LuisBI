view: soporte_gm_tipos {
  sql_table_name: broxelco_rdg.Soporte_GM_Tipos ;;
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

  dimension: id_categoria {
    type: number
    sql: ${TABLE}.IdCategoria ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
