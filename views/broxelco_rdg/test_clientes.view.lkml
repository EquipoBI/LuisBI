view: test_clientes {
  sql_table_name: broxelco_rdg.TestClientes ;;

  dimension: clas {
    type: string
    sql: ${TABLE}.Clas ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
