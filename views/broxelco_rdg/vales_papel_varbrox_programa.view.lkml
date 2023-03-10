view: vales_papel_varbrox_programa {
  sql_table_name: broxelco_rdg.ValesPapelVarbroxPrograma ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: programa_broxel {
    type: string
    sql: ${TABLE}.ProgramaBroxel ;;
  }

  dimension: status_de_circulacion {
    type: string
    sql: ${TABLE}.StatusDeCirculacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
