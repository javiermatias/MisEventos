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
    title: 'Eventos',
    icon: 'fa-calendar',
    selected: false,
    expanded: false,
    order: 800,
    subMenu: [
      {
        title: 'Nuevo Evento',
        routerLink: 'eventos/nuevo'
      },
      {
        title: 'Lista',
        routerLink: 'eventos/lista'
      },
      {
        title: 'Agenda',
        routerLink: 'eventos/agenda'
      }
    ]
  },
  {
    title: 'Usuarios',
    routerLink: 'usuarios/',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 500
  },
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
  },
  {
    title: 'Tags',
    icon: 'fa-tags',
    selected: false,
    expanded: false,
    order: 800,
    routerLink: 'tags/'
  }
];
