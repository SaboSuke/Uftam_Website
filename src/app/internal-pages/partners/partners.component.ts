import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { FormationService } from '../../services/dashboard/formation.service';
import { Formation } from '../../classes/formation';
import { PartnerService } from '../../services/dashboard/partner.service';
import { CompanyService } from '../../services/dashboard/company.service';
import { StudentExpService } from '../../services/dashboard/student-exp.service';
import { LaVieService } from '../../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { AppComponent } from '../../app.component';


@Component({
  selector: 'app-partners',
  templateUrl: './partners.component.html',
  styleUrls: ['./partners.component.css']
})
export class PartnersComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private c_App: AppComponent
  ) { }
  formations: Formation[];
  companies: Formation[];
  firstEvents: Formation[];
  secondEvents: Formation[];
  activeEvents: Formation[];
  otherEvents: any;
  students: Formation[];
  laVies: Formation[];
  activeVies: Formation[];
  otherVies: any;
  laVieLength: any;
  partners: Formation[];
  license: Formation[];
  master: Formation[];
  certificate: Formation[];
  apiUrl: any;

  isMobile: boolean = false;
  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    if (window.innerWidth <= 700)
      this.isMobile = true;

    //nav setup
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [], z = [];
        var j = 0, k = 0, p = 0;
        for (let i = 0; i < this.formations.length; i++) {
          if (data[i]['type'] == "Masters") {
            x[j++] = data[i];
          } else if (data[i]['type'] == "Licence") {
            y[k++] = data[i];
          } else {
            z[p++] = data[i]
          }
        }
        this.license = y;
        this.master = x;
        this.certificate = z;
      },
      error => {
        console.log("there has been an error trying to get all formaions!");
      }
    )

    //partner
    this._partner.displaySubPartners().subscribe(
      (data: Formation[]) => {
        this.partners = data;
      },
      error => {
        console.log("error trying to get partners");
      }
    )
    this._formation.getAllFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
      },
      error => {
        console.log("error trying to get formations");
      }
    )
    //events
    //event 1
    this._formation.displayFirstEvents().subscribe(
      (data: Formation[]) => {
        this.firstEvents = data;
      },
      error => {
        console.log("error trying to get events");
      }
    )
    //event 2
    this._formation.displaySecondEvents().subscribe(
      (data: Formation[]) => {
        this.secondEvents = data;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.secondEvents[i];
          j++;
          if (j == 3 || (i + 1) == data.length) {
            if (active === true) {
              a[0] = y;
              y = [];
              j = 0;
              active = false;
            } else {
              x[k] = y;
              k++;
              y = [];
              j = 0;
            }
          }
        }
        this.otherEvents = x;
        this.activeEvents = a[0];
      },
      error => {
        console.log("error trying to get events");
      }
    )

    //laVie
    this._laVie.displayVie().subscribe(
      (data: Formation[]) => {
        this.laVies = data;
        this.laVieLength = data.length - 1;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.laVies[i];
          j++;
          if (j == 3 || (i + 1) == data.length) {
            if (active === true) {
              a[0] = y;
              y = [];
              j = 0;
              active = false;
            } else {
              x[k] = y;
              k++;
              y = [];
              j = 0;
            }
          }
        }
        this.otherVies = x;
        this.activeVies = a[0];
      },
      error => {
        console.log("error trying to get studentsExp");
      }
    )
  }

}
