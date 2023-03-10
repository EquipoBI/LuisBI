view: recursos_codigos_postales {
  sql_table_name: recursos.CodigosPostales ;;

  dimension: codigo {
    type: string
    sql: ${TABLE}.Codigo ;;
  }

  dimension: codigo_estado {
    type: string
    sql: ${TABLE}.CodigoEstado ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.Municipio ;;
  }

  dimension: nivel_economico {
    type: number
    sql: ${TABLE}.NivelEconomico ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
