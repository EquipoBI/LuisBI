view: programas {
  sql_table_name: broxelco_rdg.Programas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: bin {
    type: string
    sql: ${TABLE}.bin ;;
  }

  dimension: comision {
    type: number
    sql: ${TABLE}.Comision ;;
  }

  dimension: horario_servicio {
    type: string
    sql: ${TABLE}.HorarioServicio ;;
  }

  dimension: id_cliente {
    type: string
    sql: ${TABLE}.idCliente ;;
  }

  dimension: id_emisor {
    type: number
    sql: ${TABLE}.idEmisor ;;
  }

  dimension: id_help_phone {
    type: number
    sql: ${TABLE}.idHelpPhone ;;
  }

  dimension: id_producto {
    type: string
    sql: ${TABLE}.idProducto ;;
  }

  dimension: id_programas {
    type: number
    sql: ${TABLE}.idProgramas ;;
  }

  dimension: id_tipo_comision {
    type: number
    sql: ${TABLE}.idTipoComision ;;
  }

  dimension: id_tipo_liquidacion {
    type: number
    sql: ${TABLE}.idTipoLiquidacion ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: porcentaje_disposicion {
    type: number
    sql: ${TABLE}.PorcentajeDisposicion ;;
  }

  dimension: tiempo {
    type: number
    sql: ${TABLE}.Tiempo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
