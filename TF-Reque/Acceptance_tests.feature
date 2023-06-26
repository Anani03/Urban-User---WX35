//Se hace uso de la Epic N°5

//UserStory03
Feature: Datos de la ruta en tiempo real

    Como usuario de la aplicacion,
    quiero ver todo lo que suceda en mi ruta en vivo, como accidentes, trafico y demas
    para una mejor orientacion.

    Scenario: El usuario revisando en tiempo real el trafico
        Given el <usuario> valora la precision de la informacion
        When el usuario quiera tomar una <ruta>
        And se muestre un <inconveniente vial>
        Then la aplicacion mostrara en la pantalla una <notificacion> con los incidentes ocurridos en ese momento para garantizar la precision de los datos presentados.

        Examples: Inputs
            | usuario  | ruta                                    |
            | aris.dcf | Plaza San Miguel - Real Plaza Salaverry |
            | dezkz    | Jockey Plaza - UPC San Miguel           |


        Examples: Outputs
            | notificacion                       | inconveniente vial                               |
            | Se presenta un inconveniente vial: | Trafico en Av. La Marina, choque automovilistico |
            | Se presenta un inconveniente vial: | Trafico en Av. Salaverry                         |

    Scenario: El usuario haciendo seguimiento de su viaje
        Given que para el <usuario> es importante saber su <ruta>
        When suceda algo en el camino le llegara una <notificacion>
        And esta mostrara dichos <inconvenientes> que pueda suceder
        Then dentro de la aplicacion, se actualizara su <hora de llegada>, <tiempo estimado> de viaje y la informacion cercana de alrededor.

        Examples: Inputs
            | usuario     | ruta                           |
            | pomelito314 | Av. Venezuela - Mall del Sur   |
            | jairo0109   | Av. Salaverry - Cafeladeria 4D |

        Examples: Outputs
            | notificacion                       | inconvenientes              | hora de llegada | tiempo estimado |
            | Se presenta un inconveniente vial: | Trafico en Av. Javier Prado | 12:45           | 53 min          |
            | Se presenta un inconveniente vial: | Trafico en Av. Salaverry    | 15:45           | 23 min          |



//UserStory08
Feature: Historial de viajes

    Como usuario de la aplicacion,
    deseo tener un historial de los viajes realizados de la app con la linea de transporte utilizada,
    para poder comparar experiencias y escoger la mejor opcion de transporte.

    Scenario: El usuario guarda sus recuerdos de sus viajes en una galeria
        Given el <usuario> quiere mantener un <registro_completo> de sus
        <viajes_realizados>,
        When ingrese al aplicativo
        And acceda a la seccion <historial>
        Then la app le permitira ver el <historial_completo_de_viajes>,
        ordenados cronologicamente,
        And realizar busquedas o filtrar los <resultados> segun sus necesidades.

        Examples: Inputs
            | usuario               | registro completo | Historial                       |
            | Ariana la del discord | Viaje1 - Viaje2   | Viajes 19/06   -   Viajes 20/06 |


        Examples: Outputs
            | historial completo de viajes       | resultados                                                                            |
            | Viajes 19/06( Viaje1, ..., Viaje5) | Viaje 19/06 - Hora 18:20 - Desde Av. Arica hacia Av. Universitaria - Duracion: 27 min |


    Scenario: El usuario compara experencias con diferentes aplicaciones
        Given el <usuario> quiere tener una idea de que aplicacion le conviene
        usar
        Whebn recopile las <experiencias_obtenidas>
        And decida cual fue la que mejor le ayudo a optimizar su tiempo
        Then puede elegir una de estas en base a la <mejor_experiencia>
        And usarla diariamente para sus viajes.

        Examples: Inputs
            | usuario | experiencias_obtenidas                                 |
            | Dezkz   | Llegada rapida en Viaje1, Llegada muy rapida en Viaje3 |


        Examples: Outputs
            | mejor_experiencia            |
            | Llegada muy rapida en Viaje3 |





//UserStory10
Feature: Planificacion de tu dia con precision

    Como usuario,
    deseo conocer los horarios de llegada y salida de las lineas de transporte,
    para poder organizar mis actividades.

    Scenario: Usuario desea conocer los horarios de llegada y salida de las lineas de transporte
        Given el <usuario> quiera conocer los horarios de las lineas de transporte
        When acceda al aplicativo
        And escriba en el <buscador> el <tipo de transporte> que utilizara
        And seleccione el transporte de su preferencia
        Then podre consultar los <horarios de llegada> y <horarios de salida> de las diferentes lineas de transporte publico.

        Examples: Inputs
            | usuario | tipo de transporte |
            | Faker   | taxi               |
            | Mixwell | tren               |
            | Tenz    | metro              |

        Examples: Outputs
            | buscador | Horarios de llegada | Horarios de salida |
            | vip      | 10:00               | 14:25              |
            | 6 seater | 13:12               | 1:00               |
            | comfort  | 7:00                | 8:45               |


    Scenario: Usuario desea recibir notificaciones de cambios en los horarios de transporte
        Given el <usuario> desea estar informado sobre los <cambios en los horarios> de llegada y salida de las lineas de transporte
        When acceda al aplicativo
        And active la opcion de <notificaciones de horarios>
        Then podre enviar al usuario <notificaciones automaticas> eb caso de cambios eb los horarios de llegada y salida de las lineas de transporte.


        Examples: Inputs
            | usuario | cambios en los horarios de llegada y salida |
            | Joel    | hubo demoras                                |
            | Nicolas | no hubo demoras                             |
            | Xiomara | hubo demoras                                |

        Examples: Outputs
            | notificaciones de horarios | notificaciones automaticas         |
            | se cambio el horario       | cambio del tema de la notificacion |
            | su horario sigue en pie    | cambio del color de la letra       |
            | se cambio el horario       | cambio del tamanio de la letra     |





//UserStory13
Feature: Rutas alternas para que puedan facilitar el tiempo de viaje

    Como empresa,
    deseo que a mis consumidores les aparezca una ruta alterna
    cuando su ruta principal se encuentre congestionada.

    Scenario: Visualizacion de rutas alternas para optimizar el tiempo d
        Given el <pasajero> se encuentra en una <ruta congestionada>
        When el pasajero busque en el aplicativo una <ruta alterna>
        Then se mostrara al usuario un <mensaje flotante> que el aplicativo
        encontro una <ruta> alternativa optima para salir del congestionamiento.

        Examples: Inputs
            | pasajero | ruta          |
            | romina05 | Elmer Faucett |

        Examples: Outputs
            | mensaje flotante | ruta congestionada                       | ruta alterna    |
            | Ruta alterna:    | Elmer Faucett se encuentra congestionado | Nestor Gambetta |


    Scenario: Recibir actualizaciones en tiempo real
        Given el <usuario> esta siguiendo una <ruta alternativa>
        When hay cambios en el trafico o condiciones climaticos
        de la carretera en la ruta seleccionada
        Then la aplicacion proporcionara <actualizaciones> en
        tiempo real
        And sugiere <desvios> si es que es necesario.

        Examples: Inputs
            | usuario  | ruta alternativa    |
            | romina05 | Av. Nestor Gambetta |

        Examples: Outputs
            | ruta alternativa    | actualizaciones                                                  | desvíos                                  |
            | Av. Nestor Gambetta | Actualizacion: Condiciones climaticas agradables, ruta despejada | No se encuentran alteraciones en la ruta |