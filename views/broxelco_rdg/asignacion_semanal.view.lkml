view: asignacion_semanal {
  sql_table_name: broxelco_rdg.AsignacionSemanal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: anio {
    type: string
    sql: ${TABLE}.ANIO ;;
  }

  dimension: apoyo {
    type: string
    sql: ${TABLE}.APOYO ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.CUENTA ;;
  }

  dimension: curp {
    type: string
    sql: ${TABLE}.CURP ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.Fecha_Creacion ;;
  }

  dimension_group: fecha_nacimiento {
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
    sql: ${TABLE}.FECHA_NACIMIENTO ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.Folio ;;
  }

  dimension: layout {
    type: number
    sql: ${TABLE}.Layout ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.MUNICIPIO ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
  }

  dimension: nombre_archivo {
    type: string
    sql: ${TABLE}.NombreArchivo ;;
  }

  dimension: numero_de_serie_ine {
    type: string
    sql: ${TABLE}.NUMERO_DE_SERIE_INE ;;
  }

  dimension: primer_apellido {
    type: string
    sql: ${TABLE}.PRIMER_APELLIDO ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: segundo_apellido {
    type: string
    sql: ${TABLE}.SEGUNDO_APELLIDO ;;
  }

  dimension: semana_carga {
    type: number
    sql: ${TABLE}.SemanaCarga ;;
  }

  dimension: tarjeta {
    type: string
    sql: ${TABLE}.TARJETA ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
  }

  dimension: tipo_asignacion {
    type: string
    sql: ${TABLE}.TipoAsignacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
