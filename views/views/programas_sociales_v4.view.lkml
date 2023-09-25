
view: programas_sociales_v4 {
  derived_table: {
    sql: Select
        Comercio,
        Fecha,
        Mes_txt,
        NombreMedidas,
        razon_social,
        rfc,
        email_contacto,
        Usuario,
        ventas,
        CAST(devoluciones As Decimal (32,2)),
        CAST(iva As Float),
        importe_ventas,
        CAST(importe_descuento As Decimal(32,2)),
        CAST(transacciones As Decimal (32,2)),
        EstadoFiscal,
        Case
          WHEN EstadoComercial Like '%cdmx%' Or EstadoComercial Like '%ciudad de m%' Or EstadoFiscal Like  '%feder%' Then 'DISTRITO FEDERAL'
          WHEN EstadoComercial Like '%xico%' Or EstadoFiscal Like '%xico%' Then 'ESTADO DE MÉXICO'
          WHEN EstadoComercial Like '%uebl%' Or EstadoFiscal Like '%uebl%' Then 'PUEBLA'
          WHEN EstadoComercial Like '%guerr%' Or EstadoFiscal Like '%guerr%' Then 'GUERRERO'
          WHEN EstadoComercial Like '%quer%' Or EstadoFiscal Like '%quer%' Then 'QUERÉTARO'
          WHEN EstadoComercial Like '%nuevo le%' Or EstadoFiscal Like '%nuevo le%' Then 'NUEVO LEÓN'
          WHEN EstadoComercial = 'Baja California' Or EstadoFiscal = 'Baja California' Or EstadoFiscal Like '%nort%' Then 'BAJA CALIFORNIA'
          WHEN EstadoComercial Like '%sur%' Or EstadoFiscal Like '%sur%' Then 'BAJA CALIFORNIA SUR'
          WHEN EstadoComercial Like '%campech%' Or EstadoFiscal Like '%campech%' Then 'CAMPECHE'
          WHEN EstadoComercial Like '%chiap%' Or EstadoFiscal Like '%chiap%' Then 'CHIAPAS'
          WHEN EstadoComercial Like '%aulipa%' Or EstadoFiscal Like '%aulipa%' Then 'TAMAULIPAS'
          WHEN EstadoComercial Like '%jalis%' Or EstadoFiscal Like '%jalis%' Then 'JALISCO'
          WHEN EstadoComercial Like '%sonor%' Or EstadoFiscal Like '%sonor%' Then 'SONORA'
          WHEN EstadoComercial Like '%naya%' Or EstadoFiscal Like '%naya%' Then 'NAYARIT'
          WHEN EstadoComercial Like '%micho%' Or EstadoFiscal Like '%micho%' Then 'MICHOACAN'
          WHEN EstadoComercial Like '%potos%' Or EstadoFiscal Like '%potos%' Then 'SAN LUIS POTOSÍ'
          WHEN EstadoComercial Like '%coah%' Or EstadoFiscal Like '%coah%' Then 'COAHUILA'
          WHEN EstadoComercial Like '%vera%' Or EstadoFiscal Like '%vera%' Then 'VERACRUZ'
          WHEN EstadoComercial Like '%yuca%' Or EstadoFiscal Like '%yuca%' Then 'YUCATÁN'
          WHEN EstadoComercial Like '%more%' Or EstadoFiscal Like '%more%'  Then 'MORELOS'
          WHEN EstadoComercial Like '%chih%' Or EstadoFiscal Like '%chih%' Then 'CHIHUAHUA'
          WHEN EstadoComercial Like '%zaca%' Or EstadoFiscal Like '%zaca%' Then 'ZACATECAS'
          WHEN EstadoComercial Like '%guana%' Or EstadoFiscal Like '%guana%' Then 'GUANAJUATO'
          WHEN EstadoComercial Like '%roo%' Or EstadoFiscal Like '%roo%' Then 'QUINTANA ROO'
          WHEN EstadoComercial Like '%coli%' Or EstadoFiscal Like '%coli%' Then 'COLIMA'
          WHEN EstadoComercial Like '%aguas%' Or EstadoFiscal Like '%aguas%' Then 'AGUASCALIENTES'
          WHEN EstadoComercial Like '%oax%' Or EstadoFiscal Like '%oax%' Then 'OAXACA'
          WHEN EstadoComercial Like '%sina%' Or EstadoFiscal Like '%sina%' Then 'SINALOA'
          WHEN EstadoComercial Like '%chia%' Or EstadoFiscal Like '%chia%' Then 'CHIAPAS'
          WHEN EstadoComercial Like '%dura%' Or EstadoFiscal Like '%dura%' Then 'DURANGO'
          WHEN EstadoComercial Like '%hidal%' Or EstadoFiscal Like '%hidal%' Then 'HIDALGO'
          WHEN EstadoComercial Like '%tlax%' Or EstadoFiscal Like '%tlax%' Then 'TLAXCALA'
          WHEN EstadoComercial Like '%taba%' Or EstadoFiscal Like '%taba%' Then 'TABASCO'
          Else 'ESTADO DE MÉXICO'
         End,
         MunicipioComercial
      From
         dbo.Consolidadov6

      Union All

      Select
        A.Comercio,
        A.Fecha,
        A.Fecha,
        Case
         When A.idPrograma = '5' Then 'Mejoravit'
         When A.idPrograma = '10' Then 'Hipoteca Verde'
         When A.idPrograma = '219' Then 'Renueva'
         When A.idPrograma = '220' Then 'Repara'
        End As 'NombreMedidas',
        B.razon_social,
        B.rfc,
        B.email_contacto,
        'Si' As 'Usuario',
         A.ventas,
         A.devoluciones,
         A.iva,
         A.importe_ventas, --Este campo se toma en cuenta para renueva y repara
         A.importe_descuento,
         A.transacciones,
         B.estado As 'Estado Fiscal',
         Case
           WHEN B.estadoComercial Like '%cdmx%' Or B.estadoComercial Like '%ciudad de m%' Or B.estado Like  '%feder%' Then 'DISTRITO FEDERAL'
           WHEN B.estadoComercial Like '%xico%' Or B.estado Like '%xico%' Then 'ESTADO DE MÉXICO'
           WHEN B.estadoComercial Like '%uebl%' Or B.estado Like '%uebl%' Then 'PUEBLA'
           WHEN B.estadoComercial Like '%guerr%' Or B.estado Like '%guerr%' Then 'GUERRERO'
           WHEN B.estadoComercial Like '%quer%' Or B.estado Like '%quer%' Then 'QUERÉTARO'
           WHEN B.estadoComercial Like '%nuevo le%' Or B.estado Like '%nuevo le%' Then 'NUEVO LEÓN'
           WHEN B.estadoComercial = 'Baja California' Or B.estado = 'Baja California' Or B.estado Like '%nort%' Then 'BAJA CALIFORNIA'
           WHEN B.estadoComercial Like '%sur%' Or B.estado Like '%sur%' Then 'BAJA CALIFORNIA SUR'
           WHEN B.estadoComercial Like '%campech%' Or B.estado Like '%campech%' Then 'CAMPECHE'
           WHEN B.estadoComercial Like '%chiap%' Or B.estado Like '%chiap%' Then 'CHIAPAS'
           WHEN B.estadoComercial Like '%aulipa%' Or B.estado Like '%aulipa%' Then 'TAMAULIPAS'
           WHEN B.estadoComercial Like '%jalis%' Or B.estado Like '%jalis%' Then 'JALISCO'
           WHEN B.estadoComercial Like '%sonor%' Or B.estado Like '%sonor%' Then 'SONORA'
           WHEN B.estadoComercial Like '%naya%' Or B.estado Like '%naya%' Then 'NAYARIT'
           WHEN B.estadoComercial Like '%micho%' Or B.estado Like '%micho%' Then 'MICHOACAN'
           WHEN B.estadoComercial Like '%potos%' Or B.estado Like '%potos%' Then 'SAN LUIS POTOSÍ'
           WHEN B.estadoComercial Like '%coah%' Or B.estado Like '%coah%' Then 'COAHUILA'
           WHEN B.estadoComercial Like '%vera%' Or B.estado Like '%vera%' Then 'VERACRUZ'
           WHEN B.estadoComercial Like '%yuca%' Or B.estado Like '%yuca%' Then 'YUCATÁN'
           WHEN B.estadoComercial Like '%more%' Or B.estado Like '%more%'  Then 'MORELOS'
           WHEN B.estadoComercial Like '%chih%' Or B.estado Like '%chih%' Then 'CHIHUAHUA'
           WHEN B.estadoComercial Like '%zaca%' Or B.estado Like '%zaca%' Then 'ZACATECAS'
           WHEN B.estadoComercial Like '%guana%' Or B.estado Like '%guana%' Then 'GUANAJUATO'
           WHEN B.estadoComercial Like '%roo%' Or B.estado Like '%roo%' Then 'QUINTANA ROO'
           WHEN B.estadoComercial Like '%coli%' Or B.estado Like '%coli%' Then 'COLIMA'
           WHEN B.estadoComercial Like '%aguas%' Or B.estado Like '%aguas%' Then 'AGUASCALIENTES'
           WHEN B.estadoComercial Like '%oax%' Or B.estado Like '%oax%' Then 'OAXACA'
           WHEN B.estadoComercial Like '%sina%' Or B.estado Like '%sina%' Then 'SINALOA'
           WHEN B.estadoComercial Like '%chia%' Or B.estado Like '%chia%' Then 'CHIAPAS'
           WHEN B.estadoComercial Like '%dura%' Or B.estado Like '%dura%' Then 'DURANGO'
           WHEN B.estadoComercial Like '%hidal%' Or B.estado Like '%hidal%' Then 'HIDALGO'
           WHEN B.estadoComercial Like '%tlax%' Or B.estado Like '%tlax%' Then 'TLAXCALA'
           WHEN B.estadoComercial Like '%taba%' Or B.estado Like '%taba%' Then 'TABASCO'
           Else 'ESTADO DE MÉXICO'
         End As 'Estado Comercial',
         B.delegacionComercial As 'Municipio Comercial'
       From
         broxelco_rdg.bp_detalle_diario_comercio A
       Left Join
         broxelco_rdg.Comercio B  On A.comercio = B.Comercio
       Left Join
         broxelco_rdg.ComercioNoReportar C On A.comercio = C.Comercio
       Where
         A.fecha >= '2023-09-01' And A.idPrograma In ('5','10','219','220') And C.Comercio Is Null ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: fecha {
    type: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: mes_txt {
    type: date
    sql: ${TABLE}.Mes_txt ;;
  }

  dimension: NombreMedidas{
    type: string
    sql: ${TABLE}.NombreMedidas ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: email_contacto {
    type: string
    sql: ${TABLE}.email_contacto ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  dimension: ventas {
    type: number
    sql: ${TABLE}.ventas ;;
  }

  dimension: devoluciones {
    type: number
    sql: ${TABLE}.devoluciones ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: importe_ventas {
    type: number
    sql: ${TABLE}.importe_ventas ;;
  }

  dimension: importe_descuento {
    type: number
    sql: ${TABLE}.importe_descuento ;;
  }

  dimension: transacciones {
    type: number
    sql: ${TABLE}.transacciones ;;
  }

  dimension: estado_fiscal {
    type: string
    sql: ${TABLE}.EstadoFiscal ;;
  }

  dimension: estado_comercial {
    type: string
    sql: ${TABLE}.Estado_Comercial ;;
  }

  dimension: municipio_comercial {
    type: string
    label: "Municipio Comercial"
    sql: ${TABLE}."Municipio Comercial" ;;
  }

  set: detail {
    fields: [
        comercio,
  fecha,
  mes_txt,
  NombreMedidas,
  razon_social,
  rfc,
  email_contacto,
  usuario,
  ventas,
  devoluciones,
  iva,
  importe_ventas,
  importe_descuento,
  transacciones,
  estado_fiscal,
  estado_comercial,
  municipio_comercial
    ]
  }
}
