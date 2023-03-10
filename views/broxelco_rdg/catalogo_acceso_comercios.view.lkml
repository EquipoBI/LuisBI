view: catalogo_acceso_comercios {
  sql_table_name: broxelco_rdg.catalogo_acceso_comercios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: acceso_mtc {
    type: number
    sql: ${TABLE}.accesoMTC ;;
  }

  dimension: acceso_payments {
    type: number
    sql: ${TABLE}.accesoPayments ;;
  }

  dimension: afiliacion {
    type: string
    sql: ${TABLE}.afiliacion ;;
  }

  dimension: apellido_materno {
    type: string
    sql: ${TABLE}.ApellidoMaterno ;;
  }

  dimension: appellido_paterno {
    type: string
    sql: ${TABLE}.AppellidoPaterno ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: comercio {
    type: number
    sql: ${TABLE}.comercio ;;
  }

  dimension_group: fecha_hora_creacion {
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
    sql: ${TABLE}.FechaHoraCreacion ;;
  }

  dimension_group: fecha_hora_modificacion {
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
    sql: ${TABLE}.FechaHoraModificacion ;;
  }

  dimension: matriz {
    type: string
    sql: ${TABLE}.Matriz ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
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
