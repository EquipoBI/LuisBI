view: tickets_bi {
  sql_table_name: recursos.TicketsBI ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}.Area ;;
  }

  dimension: base_datos_principal {
    type: string
    sql: ${TABLE}.BaseDatosPrincipal ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: entregable_final {
    type: string
    sql: ${TABLE}.EntregableFinal ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_compromiso {
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
    sql: ${TABLE}.FechaCompromiso ;;
  }

  dimension_group: fecha_entrega {
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
    sql: ${TABLE}.FechaEntrega ;;
  }

  dimension_group: fecha_entrega_externa {
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
    sql: ${TABLE}.FechaEntregaExterna ;;
  }

  dimension_group: fecha_fin_aclaraciones {
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
    sql: ${TABLE}.FechaFinAclaraciones ;;
  }

  dimension_group: fecha_inicio {
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
    sql: ${TABLE}.FechaInicio ;;
  }

  dimension_group: fecha_solicitud {
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
    sql: ${TABLE}.FechaSolicitud ;;
  }

  dimension: liga_codigo {
    type: string
    sql: ${TABLE}.LigaCodigo ;;
  }

  dimension: liga_requerimiento {
    type: string
    sql: ${TABLE}.LigaRequerimiento ;;
  }

  dimension: liga_requerimiento_externo {
    type: string
    sql: ${TABLE}.LigaRequerimientoExterno ;;
  }

  dimension: liga_tablero {
    type: string
    sql: ${TABLE}.LigaTablero ;;
  }

  dimension: necesidades_externas {
    type: string
    sql: ${TABLE}.NecesidadesExternas ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.Observaciones ;;
  }

  dimension: personal_asignado {
    type: string
    sql: ${TABLE}.PersonalAsignado ;;
  }

  dimension: prioridad {
    type: string
    sql: ${TABLE}.Prioridad ;;
  }

  dimension: requiere_desarrollo_externo {
    type: number
    sql: ${TABLE}.RequiereDesarrolloExterno ;;
  }

  dimension: se_entrego_antes_del_ticket {
    type: number
    sql: ${TABLE}.SeEntregoAntesDelTicket ;;
  }

  dimension: servidor_principal {
    type: string
    sql: ${TABLE}.ServidorPrincipal ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.Solicitante ;;
  }

  dimension: tablero_relacionado {
    type: string
    sql: ${TABLE}.TableroRelacionado ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.Ticket ;;
  }

  dimension: ticket_externo {
    type: string
    sql: ${TABLE}.TicketExterno ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
