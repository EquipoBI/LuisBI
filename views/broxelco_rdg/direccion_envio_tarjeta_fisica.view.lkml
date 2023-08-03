view: direccion_envio_tarjeta_fisica {
  sql_table_name: broxelco_rdg.DireccionEnvioTarjetaFisica ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.Calle ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.Colonia ;;
  }

  dimension: cp {
    type: string
    sql: ${TABLE}.CP ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha_ingreso {
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
    sql: ${TABLE}.FechaIngreso ;;
  }

  dimension: id_folio {
    type: string
    sql: ${TABLE}.IdFolio ;;
  }

  dimension: id_usuario_online {
    type: number
    sql: ${TABLE}.IdUsuarioOnline ;;
  }

  dimension: municipio_delegacion {
    type: string
    sql: ${TABLE}.Municipio_Delegacion ;;
  }

  dimension: nombre_recibe {
    type: string
    sql: ${TABLE}.Nombre_recibe ;;
  }

  dimension: num_exterior {
    type: string
    sql: ${TABLE}.Num_exterior ;;
  }

  dimension: num_interior {
    type: string
    sql: ${TABLE}.Num_interior ;;
  }

  dimension: numero_cuenta {
    type: string
    sql: ${TABLE}.numero_cuenta ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
