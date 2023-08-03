view: costos_b1010 {
  sql_table_name: broxelco_rdg.CostosB1010 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: activo {
    type: number
    sql: ${TABLE}.Activo ;;
  }

  dimension: codigo_costo {
    type: string
    sql: ${TABLE}.CodigoCosto ;;
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
