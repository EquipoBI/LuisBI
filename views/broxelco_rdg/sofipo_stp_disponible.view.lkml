view: sofipo_stp_disponible {
  sql_table_name: broxelco_rdg.SofipoStpDisponible ;;

  dimension: clabe {
    type: string
    sql: ${TABLE}.CLABE ;;
  }

  dimension: disponible {
    type: number
    sql: ${TABLE}.Disponible ;;
  }

  dimension: egresos {
    type: number
    sql: ${TABLE}.Egresos ;;
  }

  dimension: ingreso {
    type: number
    sql: ${TABLE}.Ingreso ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
