view: auditorias20192 {
  sql_table_name: broxelco_rdg.Auditorias20192 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: afiliacin {
    type: string
    sql: ${TABLE}."Afiliación" ;;
  }

  dimension: agente {
    type: string
    sql: ${TABLE}.Agente ;;
  }

  dimension: amerita_llamada_telefnica {
    type: string
    sql: ${TABLE}."Amerita llamada telefónica" ;;
  }

  dimension: artculos_fuera_del_programa {
    type: string
    sql: ${TABLE}."Artículos fuera del programa" ;;
  }

  dimension: categorias_de_productos {
    type: string
    sql: ${TABLE}."Categorias de productos" ;;
  }

  dimension: comentarios {
    type: string
    sql: ${TABLE}.Comentarios ;;
  }

  dimension: estatus_de_auditoria {
    type: string
    sql: ${TABLE}."Estatus de Auditoria" ;;
  }

  dimension: estatus_factura {
    type: string
    sql: ${TABLE}."Estatus Factura" ;;
  }

  dimension: estatus_firma {
    type: string
    sql: ${TABLE}."Estatus Firma" ;;
  }

  dimension: estatus_ife {
    type: string
    sql: ${TABLE}."Estatus IFE" ;;
  }

  dimension: estatus_productos {
    type: string
    sql: ${TABLE}."Estatus Productos" ;;
  }

  dimension: factura {
    type: string
    sql: ${TABLE}.Factura ;;
  }

  dimension_group: fecha_transaction {
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
    sql: ${TABLE}.FechaTransaction ;;
  }

  dimension: firma {
    type: string
    sql: ${TABLE}.Firma ;;
  }

  dimension_group: hora {
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
    sql: ${TABLE}.Hora ;;
  }

  dimension: id_auditoria {
    type: number
    sql: ${TABLE}.IdAuditoria ;;
  }

  dimension: ife {
    type: string
    sql: ${TABLE}.IFE ;;
  }

  dimension_group: marca_temporal {
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
    sql: ${TABLE}."Marca temporal" ;;
  }

  dimension: monto_factura {
    type: number
    sql: ${TABLE}.MontoFactura ;;
  }

  dimension: monto_payments {
    type: number
    sql: ${TABLE}.MontoPayments ;;
  }

  dimension: motivo_de_amonestacin {
    type: string
    sql: ${TABLE}."Motivo de amonestación" ;;
  }

  dimension: n_de_productos_adquiridos {
    type: number
    sql: ${TABLE}."Nº de productos adquiridos" ;;
  }

  dimension: nmero {
    type: string
    sql: ${TABLE}."Número" ;;
  }

  dimension: nombre_del_titular {
    type: string
    sql: ${TABLE}."Nombre del titular" ;;
  }

  dimension: productos {
    type: string
    sql: ${TABLE}.Productos ;;
  }

  dimension: productos_dentro_del_programa {
    type: string
    sql: ${TABLE}."Productos dentro del programa?" ;;
  }

  dimension: programa_al_que_pertenece {
    type: string
    sql: ${TABLE}."Programa al que pertenece" ;;
  }

  dimension: razn_social {
    type: string
    sql: ${TABLE}."Razón Social" ;;
  }

  dimension: telfono {
    type: string
    sql: ${TABLE}."Teléfono" ;;
  }

  dimension: turno {
    type: string
    sql: ${TABLE}.Turno ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
