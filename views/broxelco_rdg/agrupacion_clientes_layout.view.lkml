view: agrupacion_clientes_layout {
  sql_table_name: broxelco_rdg.AgrupacionClientesLayout ;;

  dimension: clabedestino {
    type: string
    sql: ${TABLE}.clabedestino ;;
  }

  dimension: emitefactura {
    type: number
    sql: ${TABLE}.emitefactura ;;
  }

  dimension: grupo_fiscal {
    type: number
    sql: ${TABLE}.GrupoFiscal ;;
  }

  dimension: id_layout {
    type: number
    sql: ${TABLE}.idLayout ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: reporta_pld {
    type: number
    sql: ${TABLE}.ReportaPLD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
