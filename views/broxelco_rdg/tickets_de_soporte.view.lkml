view: tickets_de_soporte {
  sql_table_name: broxelco_rdg.tickets_de_soporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agente_soporte {
    type: string
    sql: ${TABLE}.agente_soporte ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_estimada {
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
    sql: ${TABLE}.fecha_estimada ;;
  }

  dimension_group: fecha_resolucion {
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
    sql: ${TABLE}.fecha_resolucion ;;
  }

  dimension: files {
    type: string
    sql: ${TABLE}.files ;;
  }

  dimension: plataforma {
    type: string
    sql: ${TABLE}.Plataforma ;;
  }

  dimension: prioridad {
    type: string
    sql: ${TABLE}.prioridad ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.ticket ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension_group: ultima_bitacora {
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
    sql: ${TABLE}.ultima_bitacora ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: usuario_asignado {
    type: string
    sql: ${TABLE}.UsuarioAsignado ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
