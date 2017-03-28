import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { MasterDataService } from './service/master-data.service';
import { DropletsService } from './service/droplets.service';
import { CreateDropletComponent } from './create-droplet/create-droplet.component';

@NgModule({
  declarations: [
    AppComponent,
    CreateDropletComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  providers: [DropletsService, MasterDataService],
  bootstrap: [AppComponent]
})
export class AppModule { }
