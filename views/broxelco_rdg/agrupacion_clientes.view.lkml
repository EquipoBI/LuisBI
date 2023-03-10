view: agrupacion_clientes {
  sql_table_name: broxelco_rdg.AgrupacionClientes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: a_materno_rep_legal {
    type: string
    sql: ${TABLE}.aMaternoRepLegal ;;
  }

  dimension: a_paterno_reg_legal {
    type: string
    sql: ${TABLE}.aPaternoRegLegal ;;
  }

  dimension: actividad_economica {
    type: number
    sql: ${TABLE}.actividadEconomica ;;
  }

  dimension: autoridad_emite_rep_legal {
    type: string
    sql: ${TABLE}.autoridadEmiteRepLegal ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.calle ;;
  }

  dimension: clabedestino {
    type: string
    sql: ${TABLE}.CLABEDestino ;;
  }

  dimension: clave_agrupacion {
    type: string
    sql: ${TABLE}.ClaveAgrupacion ;;
  }

  dimension: clave_pais {
    type: string
    sql: ${TABLE}.clavePais ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigoPostal ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.colonia ;;
  }

  dimension: correo_contacto {
    type: string
    sql: ${TABLE}.CorreoContacto ;;
  }

  dimension: curp_rep_legal {
    type: string
    sql: ${TABLE}.curpRepLegal ;;
  }

  dimension: emite_factura {
    type: string
    sql: ${TABLE}.EmiteFactura ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension_group: fecha_constitucion {
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
    sql: ${TABLE}.fechaConstitucion ;;
  }

  dimension_group: fecha_nacimiento_rep_legal {
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
    sql: ${TABLE}.fechaNacimientoRepLegal ;;
  }

  dimension: grupo_fiscal {
    type: string
    sql: ${TABLE}.GrupoFiscal ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.Localidad ;;
  }

  dimension: municipio_delegacion {
    type: string
    sql: ${TABLE}.MunicipioDelegacion ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  dimension: nombre_rep_legal {
    type: string
    sql: ${TABLE}.nombreRepLegal ;;
  }

  dimension: num_ext {
    type: string
    sql: ${TABLE}.numExt ;;
  }

  dimension: num_identificacion_rep_legal {
    type: string
    sql: ${TABLE}.numIdentificacionRepLegal ;;
  }

  dimension: num_int {
    type: string
    sql: ${TABLE}.numInt ;;
  }

  dimension: pais_tel {
    type: string
    sql: ${TABLE}.paisTel ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }

  dimension: reporta_pld {
    type: string
    sql: ${TABLE}.ReportaPLD ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: rfc_rep_legal {
    type: string
    sql: ${TABLE}.rfcRepLegal ;;
  }

  dimension: tel {
    type: string
    sql: ${TABLE}.tel ;;
  }

  dimension: tipo_id_otro_rep_legal {
    type: string
    sql: ${TABLE}.tipoIdOtroRepLegal ;;
  }

  dimension: tipo_id_rep_legal {
    type: string
    sql: ${TABLE}.tipoIdRepLegal ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
