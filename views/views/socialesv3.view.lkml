
view: socialesv3 {
  derived_table: {
    sql: Select
        Comercio,
        CAST([ Fecha] As Date),
        CAST([ Mes_txt] As Date),
        SUBSTRING([ Nombre de medidas],2,LEN([ Nombre de medidas]) -1),
        SUBSTRING([ razon_social],2,LEN([ razon_social]) -1) As 'razon_social',
        SUBSTRING([ rfc],2,LEN([ rfc])-1) As 'rfc',
        SUBSTRING([ email_contacto],2,LEN([ email_contacto]) -1) As 'email_contacto',
        SUBSTRING([ Usuario],2,LEN([ Usuario]) -1) As 'Usuario',
        CAST([ ventas] As Decimal(32,2)) As 'ventas',
        CAST([ devoluciones] As Decimal (32,2)) As 'devoluciones',
        CAST([ iva] As Float) As 'iva',
        CAST([ importe_ventas] As Decimal(32,2))As 'importe_ventas',
        CAST([ importe_descuento] As Decimal(32,2))As 'importe_descuento',
        CAST([ transacciones] As Decimal (32,2) )As 'transacciones',
        [ Estado Fiscal] As 'Estado Fiscal',
        Case
           WHEN [ Estado Comercial] Like '%cdmx%' Or [ Estado Comercial] Like '%ciudad de m%' Or [ Estado Fiscal] Like  '%feder%' Then 'DISTRITO FEDERAL'
          WHEN [ Estado Comercial] Like '%xico%' Or [ Estado Fiscal] Like '%xico%' Then 'ESTADO DE MÉXICO'
          WHEN [ Estado Comercial] Like '%uebl%' Or [ Estado Fiscal] Like '%uebl%' Then 'PUEBLA'
          WHEN [ Estado Comercial] Like '%guerr%' Or [ Estado Fiscal] Like '%guerr%' Then 'GUERRERO'
          WHEN [ Estado Comercial] Like '%quer%' Or [ Estado Fiscal] Like '%quer%' Then 'QUERÉTARO'
          WHEN [ Estado Comercial] Like '%nuevo le%' Or [ Estado Fiscal] Like '%nuevo le%' Then 'NUEVO LEÓN'
          WHEN [ Estado Comercial] = 'Baja California' Or [ Estado Fiscal] = 'Baja California' Or [ Estado Fiscal] Like '%nort%' Then 'BAJA CALIFORNIA'
          WHEN [ Estado Comercial] Like '%sur%' Or [ Estado Fiscal] Like '%sur%' Then 'BAJA CALIFORNIA SUR'
          WHEN [ Estado Comercial] Like '%campech%' Or [ Estado Fiscal] Like '%campech%' Then 'CAMPECHE'
          WHEN [ Estado Comercial] Like '%chiap%' Or [ Estado Fiscal] Like '%chiap%' Then 'CHIAPAS'
          WHEN [ Estado Comercial] Like '%aulipa%' Or [ Estado Fiscal] Like '%aulipa%' Then 'TAMAULIPAS'
          WHEN [ Estado Comercial] Like '%jalis%' Or [ Estado Fiscal] Like '%jalis%' Then 'JALISCO'
          WHEN [ Estado Comercial] Like '%sonor%' Or [ Estado Fiscal] Like '%sonor%' Then 'SONORA'
          WHEN [ Estado Comercial] Like '%naya%' Or [ Estado Fiscal] Like '%naya%' Then 'NAYARIT'
          WHEN [ Estado Comercial] Like '%micho%' Or [ Estado Fiscal] Like '%micho%' Then 'MICHOACAN'
          WHEN [ Estado Comercial] Like '%potos%' Or [ Estado Fiscal] Like '%potos%' Then 'SAN LUIS POTOSÍ'
          WHEN [ Estado Comercial] Like '%coah%' Or [ Estado Fiscal] Like '%coah%' Then 'COAHUILA'
          WHEN [ Estado Comercial] Like '%vera%' Or [ Estado Fiscal] Like '%vera%' Then 'VERACRUZ'
          WHEN [ Estado Comercial] Like '%yuca%' Or [ Estado Fiscal] Like '%yuca%' Then 'YUCATÁN'
          WHEN [ Estado Comercial] Like '%more%' Or [ Estado Fiscal] Like '%more%'  Then 'MORELOS'
          WHEN [ Estado Comercial] Like '%chih%' Or [ Estado Fiscal] Like '%chih%' Then 'CHIHUAHUA'
          WHEN [ Estado Comercial] Like '%zaca%' Or [ Estado Fiscal] Like '%zaca%' Then 'ZACATECAS'
          WHEN [ Estado Comercial] Like '%guana%' Or [ Estado Fiscal] Like '%guana%' Then 'GUANAJUATO'
          WHEN [ Estado Comercial] Like '%roo%' Or [ Estado Fiscal] Like '%roo%' Then 'QUINTANA ROO'
          WHEN [ Estado Comercial] Like '%coli%' Or [ Estado Fiscal] Like '%coli%' Then 'COLIMA'
          WHEN [ Estado Comercial] Like '%aguas%' Or [ Estado Fiscal] Like '%aguas%' Then 'AGUASCALIENTES'
          WHEN [ Estado Comercial] Like '%oax%' Or [ Estado Fiscal] Like '%oax%' Then 'OAXACA'
          WHEN [ Estado Comercial] Like '%sina%' Or [ Estado Fiscal] Like '%sina%' Then 'SINALOA'
          WHEN [ Estado Comercial] Like '%chia%' Or [ Estado Fiscal] Like '%chia%' Then 'CHIAPAS'
          WHEN [ Estado Comercial] Like '%dura%' Or [ Estado Fiscal] Like '%dura%' Then 'DURANGO'
          WHEN [ Estado Comercial] Like '%hidal%' Or [ Estado Fiscal] Like '%hidal%' Then 'HIDALGO'
          WHEN [ Estado Comercial] Like '%tlax%' Or [ Estado Fiscal] Like '%tlax%' Then 'TLAXCALA'
          WHEN [ Estado Comercial] Like '%taba%' Or [ Estado Fiscal] Like '%taba%' Then 'TABASCO'
          Else 'ESTADO DE MÉXICO'
         End As 'Estado_Comercial',
         [ Municipio Comercial] As 'Municipio Comercial'
      From
         [dbo].[Consolidadov6]

      Union All

      Select
        A.Comercio,
         A.Fecha,
         DATETRUNC(MONTH,A.Fecha) AS 'Mes_txt',
         Case
           When A.idPrograma = '5' Then 'Mejoravit'
           When A.idPrograma = '10' Then 'Hipoteca Verde'
           When A.idPrograma = '219' Then 'Renueva'
           When A.idPrograma = '220' Then 'Repara'
         End As 'Nombre_de_medidas',
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

  dimension: nombre_de_medidas {
    type: string
    label: "Nombre de medidas"
    sql: ${TABLE}."Nombre de medidas" ;;
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
    label: "Estado Fiscal"
    sql: ${TABLE}."Estado Fiscal" ;;
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
  nombre_de_medidas,
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
