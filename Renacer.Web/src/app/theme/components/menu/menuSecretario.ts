export const itemsSecretario = [
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
                routerLink: 'evento/inscripcion'
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

]