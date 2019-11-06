import { Injectable } from '@angular/core';
import { Color, RGB, HEX } from './app.color';
import 'sass-to-js/js/src/sass-to-js.js';

@Injectable()
export class AppConfig {

   sassVariables: any;
   config: any;
   pieChartColors: any[];
   pieChartOptions: any;
   lineChartColors: any[];
   lineChartOptions: any;

   constructor() {
        this.sassVariables = this.getSassVariables();
        this.config = {
            name: 'Mis Eventos',
            title: 'Mis Eventos 2019',
            version: '1.0',
            colors: {
                main: this.sassVariables['main-color'],
                default: this.sassVariables['default-color'],
                dark: this.sassVariables['dark-color'],
                primary: this.sassVariables['primary-color'],
                info: this.sassVariables['info-color'],
                success: this.sassVariables['success-color'],
                warning: this.sassVariables['warning-color'],
                danger: this.sassVariables['danger-color'],
                sidebarBgColor: this.sassVariables['sidebar-bg-color'],
                gray: this.sassVariables['gray'],
                grayLight: this.sassVariables['gray-light']
            }
        }

        this.pieChartColors = [
            {
                backgroundColor: [
                    this.rgba(this.config.colors.default, 0.7),
                    this.rgba(this.config.colors.success, 0.7),
                    this.rgba(this.config.colors.warning, 0.7),
                    this.rgba(this.config.colors.info, 0.7)
                ],
                hoverBackgroundColor: [
                    this.config.colors.default,
                    this.config.colors.success,
                    this.config.colors.warning,
                    this.config.colors.info
                ],
                borderColor: this.config.colors.grayLight,
                borderWidth: 1,
                hoverBorderWidth: 3
            }
        ];

        this.lineChartColors = [
            {
                borderWidth: 2,
                backgroundColor: this.rgba(this.config.colors.info, 0.5),
                borderColor: this.config.colors.info,
                pointBorderColor: this.config.colors.default,
                pointHoverBorderColor:  this.config.colors.info,
                pointHoverBackgroundColor: this.config.colors.default,
                hoverBackgroundColor:  this.config.colors.info
            },
            {
                borderWidth: 2,
                backgroundColor: this.rgba(this.config.colors.success, 0.5),
                borderColor: this.config.colors.success,
                pointBorderColor: this.config.colors.default,
                pointHoverBorderColor:  this.config.colors.success,
                pointHoverBackgroundColor: this.config.colors.default,
                hoverBackgroundColor:  this.config.colors.success
            },
            {
                borderWidth: 2,
                backgroundColor: this.rgba(this.config.colors.danger, 0.5),
                borderColor: this.config.colors.danger,
                pointBorderColor: this.config.colors.default,
                pointHoverBorderColor:  this.config.colors.danger,
                pointHoverBackgroundColor: this.config.colors.default,
                hoverBackgroundColor:  this.config.colors.danger
            }
        ];
        this.lineChartOptions = {
             scales: {
                yAxes: [{
                    ticks: {
                        fontColor: this.rgba(this.config.colors.gray, 0.7),
                        beginAtZero: true
                    },
                    gridLines: {
                        display: true,
                        zeroLineColor: this.rgba(this.config.colors.gray, 0.5),
                        zeroLineWidth: 1,
                        color: this.rgba(this.config.colors.gray, 0.1)
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontColor: this.rgba(this.config.colors.gray, 0.7)
                    },
                    gridLines: {
                        display: true,
                        zeroLineColor: this.rgba(this.config.colors.gray, 0.5),
                        zeroLineWidth: 1,
                        color: this.rgba(this.config.colors.gray, 0.1)
                    }
                }]
            },
            legend: {
                labels: {
                    fontColor: this.rgba(this.config.colors.gray, 0.9),
                }
            },
            tooltips: {
                enabled: true,
                backgroundColor: this.rgba(this.config.colors.main, 0.7)
            }
        }

        this.pieChartOptions = {
            title: {
                display: true,
                text: 'title (cambiar!!)',
                fontColor: this.config.colors.gray,
                fontSize: 14,
                fontStyle: 'normal'
            },
            legend: {
                labels: {
                    fontColor: this.rgba(this.config.colors.gray, 0.9),
                }
            },
            tooltips: {
                enabled: true,
                backgroundColor: this.rgba(this.config.colors.main, 0.7),
                callbacks: {
                    label: function(tooltipItem, data) {
                        const dataset = data.datasets[tooltipItem.datasetIndex];
                        const total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                            return previousValue + currentValue;
                        });
                        const currentValue = dataset.data[tooltipItem.index];
                        const precentage = Math.floor(((currentValue / total) * 100) + 0.5);
                        return data.labels[tooltipItem.index] + ': ' + precentage + '%';
                    }
                }
            }
        }



   }

    getSassVariables() {
        const variables = jQuery('body').sassToJs({pseudoEl: '::after', cssProperty: 'content'});
        return variables;
    }

    rgba(color, opacity) {
        if (color.indexOf('#') >= 0) {
            if (color.slice(1).length === 3) {
                color = '#' + color.slice(1) + '' + color.slice(1);
            }
            return new Color(new HEX(color)).setAlpha(opacity).toString();
        } else {
            console.log('incorrect color: ' + color);
            return 'rgba(255,255,255,0.7)';
        }
    }

}
