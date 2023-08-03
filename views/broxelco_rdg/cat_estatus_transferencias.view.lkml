view: cat_estatus_transferencias {
  sql_table_name: broxelco_rdg.CatEstatusTransferencias ;;

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
