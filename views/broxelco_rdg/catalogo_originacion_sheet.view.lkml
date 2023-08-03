view: catalogo_originacion_sheet {
  sql_table_name: broxelco_rdg.CatalogoOriginacionSheet ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: categoria1 {
    type: string
    sql: ${TABLE}.Categoria1 ;;
  }

  dimension: categoria2 {
    type: string
    sql: ${TABLE}.Categoria2 ;;
  }

  dimension: categoria3 {
    type: string
    sql: ${TABLE}.Categoria3 ;;
  }

  dimension: cobertura {
    type: string
    sql: ${TABLE}.Cobertura ;;
  }

  dimension: cp {
    type: string
    sql: ${TABLE}.CP ;;
  }

  dimension: cporiginador {
    type: string
    sql: ${TABLE}.CPOriginador ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_inicio {
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
    sql: ${TABLE}.FechaInicio ;;
  }

  dimension_group: fechafin {
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
    sql: ${TABLE}.Fechafin ;;
  }

  dimension: meta_originador {
    type: number
    sql: ${TABLE}.MetaOriginador ;;
  }

  dimension: meta_total {
    type: number
    sql: ${TABLE}.MetaTotal ;;
  }

  dimension: originador {
    type: string
    sql: ${TABLE}.Originador ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  dimension: ubicacion {
    type: string
    sql: ${TABLE}.Ubicacion ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
