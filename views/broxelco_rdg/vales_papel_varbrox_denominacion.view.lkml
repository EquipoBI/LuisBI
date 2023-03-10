view: vales_papel_varbrox_denominacion {
  sql_table_name: broxelco_rdg.ValesPapelVarbroxDenominacion ;;
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

  dimension: valor_monetario {
    type: number
    sql: ${TABLE}.ValorMonetario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
