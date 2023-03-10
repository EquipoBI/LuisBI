view: registro_tc {
  sql_table_name: broxelco_rdg.registro_tc ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: broxel_entrega {
    type: string
    sql: ${TABLE}.broxelEntrega ;;
  }

  dimension: cant_cuotas_emis_renov {
    type: string
    sql: ${TABLE}.cant_cuotas_emis_renov ;;
  }

  dimension: cant_cuotas_pend_emis_renov {
    type: string
    sql: ${TABLE}.cant_cuotas_pend_emis_renov ;;
  }

  dimension: codigo_afinidad {
    type: string
    sql: ${TABLE}.codigo_afinidad ;;
  }

  dimension: codigo_bco_sucursal {
    type: string
    sql: ${TABLE}.codigo_bco_sucursal ;;
  }

  dimension: codigo_de_producto {
    type: string
    sql: ${TABLE}.codigo_de_producto ;;
  }

  dimension: codigo_limite_compra {
    type: string
    sql: ${TABLE}.codigo_limite_compra ;;
  }

  dimension: codigo_modificacion {
    type: string
    sql: ${TABLE}.codigoModificacion ;;
  }

  dimension: codigo_servicio {
    type: string
    sql: ${TABLE}.codigoServicio ;;
  }

  dimension: embozada {
    type: number
    sql: ${TABLE}.embozada ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_primer_movimiento {
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
    sql: ${TABLE}.fecha_primer_movimiento ;;
  }

  dimension_group: fecha_proceso_alta {
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
    sql: ${TABLE}.fecha_proceso_alta ;;
  }

  dimension_group: fecha_proceso_baja {
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
    sql: ${TABLE}.fecha_proceso_baja ;;
  }

  dimension_group: fecha_ultima_actualizacion {
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
    sql: ${TABLE}.fecha_ultima_actualizacion ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.filler ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: id_odttarj {
    type: number
    sql: ${TABLE}.IdODTTarj ;;
  }

  dimension: id_reg_tc_old {
    type: number
    sql: ${TABLE}.idRegTcOLD ;;
  }

  dimension: idmaquila {
    type: number
    sql: ${TABLE}.idmaquila ;;
  }

  dimension: importe_der_emis_renov {
    type: number
    sql: ${TABLE}.importe_der_emis_renov ;;
  }

  dimension: importe_limite_de_credito {
    type: number
    sql: ${TABLE}.importe_limite_de_credito ;;
  }

  dimension: marca_alta_renov_inh {
    type: string
    sql: ${TABLE}.marca_alta_renov_inh ;;
  }

  dimension: modo_impresion {
    type: string
    sql: ${TABLE}.modoImpresion ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: num_anterior {
    type: string
    sql: ${TABLE}.num_anterior ;;
  }

  dimension: num_documento {
    type: string
    sql: ${TABLE}.NumDocumento ;;
  }

  dimension: num_nuevo {
    type: string
    sql: ${TABLE}.num_nuevo ;;
  }

  dimension: num_referencia_abm {
    type: string
    sql: ${TABLE}.num_referencia_ABM ;;
  }

  dimension: numero_de_cuenta {
    type: string
    sql: ${TABLE}.numero_de_cuenta ;;
  }

  dimension: numero_tc {
    type: string
    sql: ${TABLE}.numero_tc ;;
  }

  dimension: registro_broxel {
    type: string
    sql: ${TABLE}.registroBroxel ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_de_registro {
    type: string
    sql: ${TABLE}.tipo_de_registro ;;
  }

  dimension: transa_rech {
    type: string
    sql: ${TABLE}.TransaRech ;;
  }

  dimension: version_plastico {
    type: string
    sql: ${TABLE}.versionPlastico ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
