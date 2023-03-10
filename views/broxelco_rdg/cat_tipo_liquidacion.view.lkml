view: cat_tipo_liquidacion {
  sql_table_name: broxelco_rdg.CatTipoLiquidacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: tipo_liquidacion {
    type: string
    sql: ${TABLE}.TipoLiquidacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
