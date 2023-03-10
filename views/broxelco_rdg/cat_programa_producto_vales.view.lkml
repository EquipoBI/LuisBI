view: cat_programa_producto_vales {
  sql_table_name: broxelco_rdg.CatProgramaProductoVales ;;

  dimension: id_programa {
    type: number
    sql: ${TABLE}.idPrograma ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
