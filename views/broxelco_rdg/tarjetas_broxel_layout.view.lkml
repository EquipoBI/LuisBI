view: tarjetas_broxel_layout {
  sql_table_name: broxelco_rdg.TarjetasBroxelLayout ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cantidad_cuotas_bonificacion {
    type: string
    sql: ${TABLE}.cantidadCuotasBonificacion ;;
  }

  dimension: codigo_periodo_bonificacion {
    type: string
    sql: ${TABLE}.codigoPeriodoBonificacion ;;
  }

  dimension: codigo_producto {
    type: string
    sql: ${TABLE}.codigoProducto ;;
  }

  dimension: codigo_servicio {
    type: string
    sql: ${TABLE}.codigoServicio ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: grupo_liquidacion {
    type: string
    sql: ${TABLE}.grupoLiquidacion ;;
  }

  dimension: habilita_compra {
    type: string
    sql: ${TABLE}.habilitaCompra ;;
  }

  dimension: id_app {
    type: number
    sql: ${TABLE}.idApp ;;
  }

  dimension: marca_tpp {
    type: string
    sql: ${TABLE}.marcaTpp ;;
  }

  dimension: porc_bonificacion {
    type: number
    sql: ${TABLE}.porcBonificacion ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuarioCreacion ;;
  }

  dimension: usuario_genera {
    type: string
    sql: ${TABLE}.usuarioGenera ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
