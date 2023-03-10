view: broxel_servicios {
  sql_table_name: broxelco_rdg.broxel_servicios ;;

  dimension: campana {
    type: string
    sql: ${TABLE}.campana ;;
  }

  dimension: id_sys {
    type: number
    sql: ${TABLE}.id_sys ;;
  }

  dimension: servicio {
    type: string
    sql: ${TABLE}.servicio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
