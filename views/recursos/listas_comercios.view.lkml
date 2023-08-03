view: listas_comercios {
  sql_table_name: recursos.ListasComercios ;;

  dimension: esta_en_lista {
    type: number
    sql: ${TABLE}.Esta_en_lista ;;
  }

  dimension_group: fecha_bloqueo {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Bloqueo ;;
  }

  dimension: identificacion_comercio {
    type: string
    sql: ${TABLE}.Identificacion_Comercio ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.Razon_Social ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.RFC ;;
  }

  dimension: tipo_de_lista {
    type: string
    sql: ${TABLE}.Tipo_de_Lista ;;
  }

  dimension: tipo_listas_id {
    type: number
    sql: ${TABLE}.Tipo_Listas_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
