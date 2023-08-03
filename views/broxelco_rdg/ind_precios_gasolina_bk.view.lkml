view: ind_precios_gasolina_bk {
  sql_table_name: broxelco_rdg.indPreciosGasolinaBk ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: diesel {
    type: number
    sql: ${TABLE}.Diesel ;;
  }

  dimension_group: fecha_import {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fechaImport ;;
  }

  dimension_group: fin_vigencia {
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
    sql: ${TABLE}.finVigencia ;;
  }

  dimension: id_estado {
    type: number
    sql: ${TABLE}.idEstado ;;
  }

  dimension: id_municipio {
    type: string
    sql: ${TABLE}.idMunicipio ;;
  }

  dimension: id_region {
    type: number
    sql: ${TABLE}.idRegion ;;
  }

  dimension_group: inicio_vigencia {
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
    sql: ${TABLE}.inicioVigencia ;;
  }

  dimension: magna {
    type: number
    sql: ${TABLE}.Magna ;;
  }

  dimension: premium {
    type: number
    sql: ${TABLE}.Premium ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
