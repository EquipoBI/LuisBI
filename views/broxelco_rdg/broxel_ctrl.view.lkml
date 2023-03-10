view: broxel_ctrl {
  sql_table_name: broxelco_rdg.BroxelCtrl ;;

  dimension: ano {
    type: string
    sql: ${TABLE}.Ano ;;
  }

  dimension: broxel_control {
    type: string
    sql: ${TABLE}.BroxelControl ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.clave_cliente ;;
  }

  dimension: nombresmedidas {
    type: string
    sql: ${TABLE}.Nombresmedidas ;;
  }

  dimension: valoresmedidas {
    type: number
    sql: ${TABLE}.Valoresmedidas ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
