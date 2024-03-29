export const itemsAdmin = [
  {
    title: 'Principal',
    routerLink: 'dashboard',
    icon: 'fa-home',
    selected: false,
    expanded: false,
    order: 0
  },
  {
    title: 'Calendario',
    icon: 'fa-calendar',
    routerLink: 'evento/calendario/',
    selected: false,
    expanded: false,
    order: 100,
  },
  {
    title: 'Eventos',
    icon: 'fa-pencil-square-o',
    routerLink: 'evento',
    selected: false,
    expanded: false,
    order: 150,
    subMenu: [
      {
        title: 'Ver Eventos',
        routerLink: 'evento/lista'
      },
      {
        title: 'Cronograma',
        routerLink: 'reportes/time-line'
      },
      {
        title: 'Inscripciones',
        routerLink: 'evento/lista-inscripciones'
      },

      {
        title: 'Cobrar cuotas',
        routerLink: 'pago-cuota'
      }

    ]
  },
  {
    title: 'Matricula',
    icon: 'fa-thumb-tack',
    routerLink: 'matricula',
    selected: false,
    expanded: false,
    order: 150,
    subMenu: [
      {
        title: 'Matriculas',
        routerLink: 'matricula'
      },
      {
        title: 'Cobrar Matricula',
        routerLink: 'cobro-matricula'
      },
      {
        title: 'Matricula Pagadas',
        routerLink: 'pago-matricula'
      },


    ]
  },
  {
    title: 'Recordatorios',
    icon: 'fa-clock-o',
    selected: false,
    expanded: false,
    order: 800,
    routerLink: 'recordatorios/'
  }
  ,
  {
    title: 'Socios',
    icon: 'fa fa-user',
    selected: false,
    expanded: false,
    order: 200,
    routerLink: 'socios/'
  },
  {
    title: 'Secretarios',
    icon: 'fa fa-user',
    selected: false,
    expanded: false,
    order: 200,
    routerLink: 'secretarios/'
  },
  {
    title: 'Encargados',
    routerLink: 'encargados/',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 300
  },
  {
    title: 'Espacios',
    icon: 'fa-map-marker',
    selected: false,
    expanded: false,
    order: 400,
    routerLink: 'espacios/'
  },
  {
    title: 'Reportes',
    routerLink: 'reportes',
    icon: 'fa-file',
    selected: false,
    expanded: false,
    order: 300,
    subMenu: [
      {
        title: 'Eventos',      
        selected: false,
        expanded: false,
        order: 150,
        subMenu: [
          {
            title: 'Eventos',
            routerLink: 'reportes/eventos'
          },
            {
              title: 'Ranking',
              routerLink: 'reportes/ranking'
            },
            {
              title: 'Ingresos',
              routerLink: 'reportes/ingresos'
            },
            {
              title: 'Asistencias',
              routerLink: 'reportes/asistencias',
              icon: 'fa-users'
            },
            {
              title: 'Deudores',
              routerLink: 'reportes/deudores',
              icon: 'fa-money'
            }
          ]
      },
    {
      title: 'Socios',      
      selected: false,
      expanded: false,
      order: 150,
      subMenu: [
        {
          title: 'Socios',
          routerLink: 'reportes/socios'
        },
        {
          title: 'Crecimiento',
          routerLink: 'reportes/crecimiento-socios'
        },
        {
          title: 'Asistencia socios',
          routerLink: 'reportes/asistencias-socio'
        }
      
      ]
      },
      // {
      //   title: 'Encargados',
      //   routerLink: 'reportes/encargados'
      // }, crecimiento-socios
      {
        title: 'Nube de Intereses',
        routerLink: 'reportes/tags'
      }
    ]
  }
  // ,{
  //   title: 'Estadisticas',
  //   routerLink: 'estadisticas',
  //   icon: 'fa-file-o',
  //   selected: false,
  //   expanded: false,
  //   order: 300,
  //   subMenu: [
  //     {
  //       title: 'Eventos',
  //       routerLink: 'estadisticas/eventos'
  //     },
  //     {
  //       title: 'Socios',
  //       routerLink: 'estadisticas/socios'
  //     },
  //     {
  //       title: 'Nube de Etiquetas',
  //       routerLink: 'estadisticas/tags'
  //     }
  //   ]
  // }
];
