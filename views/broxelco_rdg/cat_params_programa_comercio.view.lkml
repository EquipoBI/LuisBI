view: cat_params_programa_comercio {
  sql_table_name: broxelco_rdg.CatParamsProgramaComercio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: comision {
    type: number
    sql: ${TABLE}.Comision ;;
  }

  dimension: cont_tran {
    type: number
    sql: ${TABLE}.ContTran ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_actualizacion {
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
    sql: ${TABLE}.FechaActualizacion ;;
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
    sql: ${TABLE}.FechaCreacion ;;
  }

  dimension: id_comercio {
    type: number
    sql: ${TABLE}.idComercio ;;
  }

  dimension: id_programa {
    type: number
    sql: ${TABLE}.idPrograma ;;
  }

  dimension: max_tran {
    type: number
    sql: ${TABLE}.MaxTran ;;
  }

  dimension: tasa_iva {
    type: number
    sql: ${TABLE}.TasaIva ;;
  }

  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.UsuarioModificacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
