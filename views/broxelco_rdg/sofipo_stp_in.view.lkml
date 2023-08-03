view: sofipo_stp_in {
  sql_table_name: broxelco_rdg.SofipoStpIn ;;

  dimension: actividad_economica {
    type: string
    sql: ${TABLE}.ActividadEconomica ;;
  }

  dimension: alcaldia_mun {
    type: string
    sql: ${TABLE}.ALCALDIA_MUN ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.CALLE ;;
  }

  dimension: clabe_beneficiario {
    type: string
    sql: ${TABLE}.CLABE_Beneficiario ;;
  }

  dimension: clabe_cuenta {
    type: string
    sql: ${TABLE}.clabeCuenta ;;
  }

  dimension: clabe_ordenante {
    type: string
    sql: ${TABLE}.CLABE_Ordenante ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: clave_rastreo {
    type: string
    sql: ${TABLE}.ClaveRastreo ;;
  }

  dimension: cod_canton {
    type: string
    sql: ${TABLE}.CodCanton ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.CODIGO_POSTAL ;;
  }

  dimension: colonia {
    type: string
    sql: ${TABLE}.COLONIA ;;
  }

  dimension: concepto_pago {
    type: string
    sql: ${TABLE}.ConceptoPago ;;
  }

  dimension: curp_rep_legal {
    type: string
    sql: ${TABLE}.curpRepLegal ;;
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.Dia ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: empresas {
    type: string
    sql: ${TABLE}.EMPRESAs ;;
  }

  dimension: entidad_fed {
    type: string
    sql: ${TABLE}.ENTIDAD_FED ;;
  }

  dimension: enttidad_fed_alcaldia_mun {
    type: string
    sql: ${TABLE}.EnttidadFedAlcaldiaMun ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.estado_operativo ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.Estatus ;;
  }

  dimension: fecha_nacimiento_curp {
    type: string
    sql: ${TABLE}.fechaNacimientoCURP ;;
  }

  dimension: fecha_nacimiento_rfc {
    type: string
    sql: ${TABLE}.fechaNacimientoRFC ;;
  }

  dimension_group: fecha_operacion {
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
    sql: ${TABLE}.FechaOperacion ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.Genero ;;
  }

  dimension: id_stp {
    type: string
    sql: ${TABLE}.idSTP ;;
  }

  dimension: institucion_ordenante {
    type: number
    sql: ${TABLE}.InstitucionOrdenante ;;
  }

  dimension: materno {
    type: string
    sql: ${TABLE}.Materno ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nombre_completo_cliente {
    type: string
    sql: ${TABLE}.nombreCompletoCliente ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  dimension: nombre_ordenante {
    type: string
    sql: ${TABLE}.NombreOrdenante ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.num_cuenta ;;
  }

  dimension: num_ext {
    type: string
    sql: ${TABLE}.NUM_EXT ;;
  }

  dimension: num_int {
    type: string
    sql: ${TABLE}.NUM_INT ;;
  }

  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numeroIdentificacion ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: paterno {
    type: string
    sql: ${TABLE}.Paterno ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: referencia_numerica {
    type: number
    sql: ${TABLE}.ReferenciaNumerica ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: rfc_curp {
    type: string
    sql: ${TABLE}.RFC_CURP ;;
  }

  dimension: rfc_curp_ordenante {
    type: string
    sql: ${TABLE}.RfcCurpOrdenante ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
  }

  dimension: tipo_identificacion {
    type: string
    sql: ${TABLE}.tipoIdentificacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
