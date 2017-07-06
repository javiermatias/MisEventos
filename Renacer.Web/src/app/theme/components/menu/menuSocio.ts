export const itemsSocio = [
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
    selected: false,
    icon: 'fa-calendar',
    expanded: false,
    order: 800,
    target: '_blank',
    subMenu: [
      {
        title: 'Nuevo Evento',
        routerLink: 'socios/nuevo'
      },
      {
        title: 'Lista',
        routerLink: 'socios/lista'
      }
    ]
  },
  {
    title: 'Usuarios',
    routerLink: 'usuarios',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 500,
    subMenu: [
      {
        title: 'Nuevo Usuario',
        routerLink: 'usuarios/nuevo'
      },
      {
        title: 'Lista',
        routerLink: 'usuarios/lista'
      }
    ]
  },
  {
    title: 'Socios',
    routerLink: 'socios',
    icon: 'fa-users',
    selected: false,
    expanded: false,
    order: 500,
    subMenu: [
      {
        title: 'Nuevo Socio',
        routerLink: 'socios/nuevo'
      },
      {
        title: 'Lista',
        routerLink: 'socios/'
      }
    ]
  },
  {
    title: 'Espacios',
    icon: 'fa-map-marker',
    selected: false,
    expanded: false,
    order: 800,
    target: '_blank',
    routerLink: 'espacios/'
  }
];
