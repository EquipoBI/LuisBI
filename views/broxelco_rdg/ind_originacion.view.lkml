view: ind_originacion {
  sql_table_name: broxelco_rdg.ind_Originacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: archivo_fondeadora {
    type: string
    sql: ${TABLE}.archivoFondeadora ;;
  }

  dimension: archivo_fuente {
    type: string
    sql: ${TABLE}.archivoFuente ;;
  }

  dimension: archivo_resp_ada {
    type: string
    sql: ${TABLE}.archivoRespADA ;;
  }

  dimension: archivo_resp_asignacion {
    type: string
    sql: ${TABLE}.archivoRespAsignacion ;;
  }

  dimension: archivo_resp_fondeadora {
    type: string
    sql: ${TABLE}.archivoRespFondeadora ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: cel_referenciador {
    type: string
    sql: ${TABLE}.celReferenciador ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.clabe ;;
  }

  dimension: clave_entidad_financiera {
    type: number
    sql: ${TABLE}.claveEntidadFinanciera ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigoPostal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correoElectronico ;;
  }

  dimension: credito {
    type: string
    sql: ${TABLE}.credito ;;
  }

  dimension: estado_civil {
    type: string
    sql: ${TABLE}.estadoCivil ;;
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

  dimension_group: fecha_proceso {
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
    sql: ${TABLE}.fechaProceso ;;
  }

  dimension: folio_dispersion {
    type: string
    sql: ${TABLE}.folioDispersion ;;
  }

  dimension: folio_renominacion {
    type: string
    sql: ${TABLE}.folioRenominacion ;;
  }

  dimension: folio_transferencia {
    type: string
    sql: ${TABLE}.folioTransferencia ;;
  }

  dimension: id_archivo_rechazos {
    type: number
    sql: ${TABLE}.idArchivoRechazos ;;
  }

  dimension: id_programa {
    type: number
    sql: ${TABLE}.idPrograma ;;
  }

  dimension: id_usuario_online_broxel {
    type: number
    sql: ${TABLE}.idUsuarioOnlineBroxel ;;
  }

  dimension: monto_credito {
    type: number
    sql: ${TABLE}.montoCredito ;;
  }

  dimension: monto_disponible_clabe {
    type: number
    sql: ${TABLE}.montoDisponibleClabe ;;
  }

  dimension: monto_total_credito {
    type: number
    sql: ${TABLE}.montoTotalCredito ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: nombre_tarjetahabiente {
    type: string
    sql: ${TABLE}.nombre_tarjetahabiente ;;
  }

  dimension: numero_carrier {
    type: string
    sql: ${TABLE}.numeroCarrier ;;
  }

  dimension: numero_celular {
    type: string
    sql: ${TABLE}.numeroCelular ;;
  }

  dimension: numero_consecutivo {
    type: number
    sql: ${TABLE}.numeroConsecutivo ;;
  }

  dimension: numero_documento {
    type: string
    sql: ${TABLE}.numeroDocumento ;;
  }

  dimension: numero_ext {
    type: string
    sql: ${TABLE}.numeroExt ;;
  }

  dimension: numero_telefono {
    type: string
    sql: ${TABLE}.numeroTelefono ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipoDocumento ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
