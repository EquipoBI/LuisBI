view: accessos_clientes {
  sql_table_name: broxelco_rdg.accessos_clientes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activo_cuenta {
    type: string
    sql: ${TABLE}.ActivoCuenta ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.Alias ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
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

  dimension: id_cat_emisor_petrus {
    type: number
    sql: ${TABLE}.IdCatEmisorPetrus ;;
  }

  dimension: id_maquila {
    type: number
    sql: ${TABLE}.IdMaquila ;;
  }

  dimension: id_procesador {
    type: number
    sql: ${TABLE}.IdProcesador ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.IdUsuarioOnlineBroxel ;;
  }

  dimension: identificador_tarjeta {
    type: number
    sql: ${TABLE}.identificadorTarjeta ;;
  }

  dimension: nombre_completo {
    type: string
    sql: ${TABLE}.nombre_completo ;;
  }

  dimension: p2_p_activo {
    type: string
    sql: ${TABLE}.P2P_Activo ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
