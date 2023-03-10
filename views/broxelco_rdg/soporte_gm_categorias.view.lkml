view: soporte_gm_categorias {
  sql_table_name: broxelco_rdg.Soporte_GM_Categorias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
