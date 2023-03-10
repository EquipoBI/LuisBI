view: parque_vehicular {
  sql_table_name: broxelco_rdg.parqueVehicular ;;

  dimension: area_de_trabajo {
    type: string
    sql: ${TABLE}.AreaDeTrabajo ;;
  }

  dimension: cilindros {
    type: number
    sql: ${TABLE}.Cilindros ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: eco {
    type: string
    sql: ${TABLE}.Eco ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: id_centro_costos {
    type: number
    sql: ${TABLE}.IdCentroCostos ;;
  }

  dimension: litros {
    type: number
    sql: ${TABLE}.Litros ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: num {
    type: number
    sql: ${TABLE}.Num ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: num_id {
    type: number
    sql: ${TABLE}.NumId ;;
  }

  dimension: numero_celular {
    type: string
    sql: ${TABLE}.NumeroCelular ;;
  }

  dimension: odometro_inicial {
    type: number
    sql: ${TABLE}.OdometroInicial ;;
  }

  dimension: placa {
    type: string
    sql: ${TABLE}.Placa ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: serie {
    type: string
    sql: ${TABLE}.Serie ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: tipo_combustible {
    type: string
    sql: ${TABLE}.TipoCombustible ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
