view: crea_cliente_sin_tarjeta_log {
  sql_table_name: broxelco_rdg.CreaClienteSinTarjetaLog ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: a_materno {
    type: string
    sql: ${TABLE}.aMaterno ;;
  }

  dimension: a_paterno {
    type: string
    sql: ${TABLE}.aPaterno ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.celular ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigoPostal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: contrasenia {
    type: string
    sql: ${TABLE}.contrasenia ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: delegacion_municipio {
    type: string
    sql: ${TABLE}.delegacionMunicipio ;;
  }

  dimension: envia_token_registro {
    type: string
    sql: ${TABLE}.enviaTokenRegistro ;;
  }

  dimension: es_fisica {
    type: string
    sql: ${TABLE}.esFisica ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_nacimiento {
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
    sql: ${TABLE}.fechaNacimiento ;;
  }

  dimension: folio_odt {
    type: string
    sql: ${TABLE}.folioODT ;;
  }

  dimension: folio_renominacion {
    type: string
    sql: ${TABLE}.folioRenominacion ;;
  }

  dimension: id_app {
    type: number
    sql: ${TABLE}.idApp ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.idUsuarioOnlineBroxel ;;
  }

  dimension: no_empleado {
    type: string
    sql: ${TABLE}.noEmpleado ;;
  }

  dimension: numero_ext {
    type: string
    sql: ${TABLE}.numeroExt ;;
  }

  dimension: numero_int {
    type: string
    sql: ${TABLE}.numeroInt ;;
  }

  dimension: p_nombre {
    type: string
    sql: ${TABLE}.pNombre ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: s_nombre {
    type: string
    sql: ${TABLE}.sNombre ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }

  dimension: tiene_cuenta {
    type: string
    sql: ${TABLE}.tieneCuenta ;;
  }

  dimension: tiene_token {
    type: string
    sql: ${TABLE}.tieneToken ;;
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
