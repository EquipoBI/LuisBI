view: clientes_brx_layout {
  sql_table_name: broxelco_rdg.clientesBrxLayout ;;

  dimension: actividad_economica {
    type: number
    sql: ${TABLE}.actividadEconomica ;;
  }

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: clabedestino {
    type: string
    sql: ${TABLE}.clabedestino ;;
  }

  dimension: cliente_br_prefix {
    type: string
    sql: ${TABLE}.clienteBrPrefix ;;
  }

  dimension: emite_factura {
    type: number
    sql: ${TABLE}.EmiteFactura ;;
  }

  dimension: id_layout {
    type: number
    sql: ${TABLE}.idLayout ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
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
