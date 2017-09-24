export const itemsAdmin = [
  {
    title: 'Dashboard',
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
    order: 800,
  },
  // {
  //   title: 'Usuarios',
  //   routerLink: 'usuarios/',
  //   icon: 'fa-users',
  //   selected: false,
  //   expanded: false,
  //   order: 500
  // },
  {
    title: 'Encargados de evento',
    routerLink: 'encargados/',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 600
  },
  {
    title: 'Socios',
    routerLink: 'socios/',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 500,
  },
  {
    title: 'Espacios',
    icon: 'fa-map-marker',
    selected: false,
    expanded: false,
    order: 800,
    routerLink: 'espacios/'
  }
  ,{
    title: 'Reportes',
    routerLink: 'reportes',
    icon: 'fa-file',
    selected: false,
    expanded: false,
    order: 300,
    subMenu: [
      {
        title: 'Eventos',
        routerLink: 'reportes/eventos'
      },
      {
        title: 'Socios',
        routerLink: 'reportes/socios'
      },
      {
        title: 'Encargados',
        routerLink: 'reportes/encargados'
      },
      {
        title: 'Nube de Etiquetas',
        routerLink: 'reportes/tags'
      }
    ]
  }
];
