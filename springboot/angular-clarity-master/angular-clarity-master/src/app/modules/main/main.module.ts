import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { ClarityModule } from '@clr/angular';

import { MainRoutingModule } from './main-routing.module';
import { MainPageComponent } from './main-page/main-page.component';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { AboutComponent } from './about/about.component';
import { LayoutComponent } from './layout/layout.component';
import { UserComponent } from './user/user.component';
import { PreferenceComponent } from './preference/preference.component';
import { HelperModule } from 'src/app/pipes/helpers.module';
import { CollegeComponent } from './college/college.component';
import { PasswordResetComponent } from './password-reset/password-reset.component';
import { ProductComponent } from './product/product.component';
import { AllproductComponent } from './product/allproduct/allproduct.component';
import { AddproductComponent } from './product/addproduct/addproduct.component';
import { EditproductComponent } from './product/editproduct/editproduct.component';
import { ManageViewComponent } from './manage-view/manage-view.component';
import { TilesComponent } from './tiles/tiles.component';
import { StepperComponent } from './stepper/stepper.component';
import { Product1Component } from './product1/product1.component';
import { UniversityComponent } from './university/university.component';
import { Product2Component } from './product2/product2.component';
import { Allproduct2Component } from './product2/allproduct2/allproduct2.component';
import { Addproduct2Component } from './product2/addproduct2/addproduct2.component';
import { Editproduct2Component } from './product2/editproduct2/editproduct2.component';
import { University1Component } from './university1/university1.component';
import { Alluniversity1Component } from './university1/alluniversity1/alluniversity1.component';
import { Adduniversity1Component } from './university1/adduniversity1/adduniversity1.component';
import { Edituniversity1Component } from './university1/edituniversity1/edituniversity1.component';
import { WorkflowComponent } from './workflow/workflow.component';
import { PlayComponent } from './play/play.component';
import { AllPlayComponent } from './play/all-play/all-play.component';
import { AddPlayComponent } from './play/add-play/add-play.component';
import { EditplayComponent } from './play/editplay/editplay.component';





import { Page11Component } from './page11/page11.component';
import { ProjectSetupComponent } from './project-setup/project-setup.component';
import { AddprojectsetupComponent } from './project-setup/addprojectsetup/addprojectsetup.component';
import { AllprojectsetupComponent } from './project-setup/allprojectsetup/allprojectsetup.component';
import { EditprojectsetupComponent } from './project-setup/editprojectsetup/editprojectsetup.component';
import { ReadonlyprojectsetupComponent } from './project-setup/readonlyprojectsetup/readonlyprojectsetup.component';
import { ModuleSetupComponent } from './module-setup/module-setup.component';
import { AllmoduleSetupComponent } from './module-setup/allmodule-setup/allmodule-setup.component';
import { AddmoduleSetupComponent } from './module-setup/addmodule-setup/addmodule-setup.component';
import { EditmoduleSetupComponent } from './module-setup/editmodule-setup/editmodule-setup.component';
import { WireframeComponent } from './wireframe/wireframe.component';
import { AllwireframeComponent } from './wireframe/allwireframe/allwireframe.component';
import { AddwireframeComponent } from './wireframe/addwireframe/addwireframe.component';
import { EditwireframeComponent } from './wireframe/editwireframe/editwireframe.component';
import { WireframetypeComponent } from './wireframe/wireframetype/wireframetype.component';
import { ActionsComponent } from './wireframe/actions/actions.component';
import { PropertiesComponent } from './wireframe/properties/properties.component';
import { UinameeditComponent } from './wireframe/uinameedit/uinameedit.component';
import { BiWidgetsComponent } from './bi-widgets/bi-widgets.component';
import { AddWidgetsComponent } from './bi-widgets/add-widgets/add-widgets.component';
import { AllWidgetsComponent } from './bi-widgets/all-widgets/all-widgets.component';
import { ReportBuilderComponent } from './report-builder/report-builder.component';
import { AllreportBuilderComponent } from './report-builder/allreport-builder/allreport-builder.component';
import { AddreportBuilderComponent } from './report-builder/addreport-builder/addreport-builder.component';
import { SelectBiComponent } from './bi-widgets/select-bi/select-bi.component';
import { EditreportBuilderComponent } from './report-builder/editreport-builder/editreport-builder.component';
import { ProjectSetup1Component } from './project-setup1/project-setup1.component';
import { ProjectCardComponent } from './project-card/project-card.component';
import { ModuleSetup1Component } from './module-setup1/module-setup1.component';
import { ModuleCardComponent } from './module-card/module-card.component';
import { WireframeCardComponent } from './wireframe-card/wireframe-card.component';
import { Wireframe1Component } from './wireframe1/wireframe1.component';
import { PropertyComponent } from './wireframe/property/property.component';
import { SuregitComponent } from './suregit/suregit.component';
import { SuredocrComponent } from './suredocr/suredocr.component';
import { SurefarmComponent } from './surefarm/surefarm.component';
import { GitfolderComponent } from './gitfolder/gitfolder.component';
import { GitfileComponent } from './gitfile/gitfile.component';
import { Gitfolder1Component } from './gitfolder1/gitfolder1.component';
import { Gitfile1Component } from './gitfile1/gitfile1.component';
import { Gitfolder2Component } from './gitfolder2/gitfolder2.component';

import { Edit2wireframeComponent } from './wireframe/edit2wireframe/edit2wireframe.component';
import { DragdropComponent } from './dragdrop/dragdrop.component';
import { DraggableDirective } from './dragdrop/draggable.directive';
import { DroppableDirective } from './dragdrop/droppable.directive';
import { DragService } from 'src/app/services/api/drag.service';
import { DragComponent } from './drag/drag.component';
import { FormioComponent } from './formio/formio.component';
import { DragDropModule } from '@angular/cdk/drag-drop';
import { DndModule } from 'ngx-drag-drop';
import { FormdragComponent } from './formdrag/formdrag.component';
import { UpdateWireframeComponent } from './wireframe/update-wireframe/update-wireframe.component';
import { SchedulerComponent } from './scheduler/scheduler.component';
import { SchedulerinfoComponent } from './schedulerinfo/schedulerinfo.component';
import { SchedulerpipeComponent } from './schedulerpipe/schedulerpipe.component';
import { WebservicesComponent } from './webservices/webservices.component';
import { OauthComponent } from './oauth/oauth.component';





@NgModule({
  declarations: [
    DroppableDirective,
    DraggableDirective,
    MainPageComponent, PageNotFoundComponent,UpdateWireframeComponent,
    AboutComponent, LayoutComponent,
    UserComponent, PreferenceComponent, CollegeComponent, PasswordResetComponent, ProductComponent, AllproductComponent, AddproductComponent, EditproductComponent, ManageViewComponent, TilesComponent, StepperComponent, Product1Component, UniversityComponent, Product2Component, Allproduct2Component, Addproduct2Component, Editproduct2Component, University1Component, Alluniversity1Component, Adduniversity1Component, Edituniversity1Component, WorkflowComponent, PlayComponent, AllPlayComponent, AddPlayComponent, EditplayComponent, Page11Component, ProjectSetupComponent, AddprojectsetupComponent, AllprojectsetupComponent, EditprojectsetupComponent, ReadonlyprojectsetupComponent, ModuleSetupComponent, AllmoduleSetupComponent, AddmoduleSetupComponent, EditmoduleSetupComponent, WireframeComponent, AllwireframeComponent, AddwireframeComponent, EditwireframeComponent, WireframetypeComponent, ActionsComponent, PropertiesComponent, UinameeditComponent, BiWidgetsComponent, AddWidgetsComponent, AllWidgetsComponent, ReportBuilderComponent, AllreportBuilderComponent, AddreportBuilderComponent, SelectBiComponent, EditreportBuilderComponent, ProjectSetup1Component, ProjectCardComponent, ModuleSetup1Component, ModuleCardComponent, WireframeCardComponent, Wireframe1Component, PropertyComponent, SuregitComponent, SuredocrComponent, SurefarmComponent, GitfolderComponent, GitfileComponent, Gitfolder1Component, Gitfile1Component, Gitfolder2Component, Edit2wireframeComponent, DragdropComponent, DragComponent, FormioComponent, FormdragComponent, SchedulerComponent, SchedulerinfoComponent, SchedulerpipeComponent, WebservicesComponent, OauthComponent,
  ],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    ClarityModule,
    HelperModule,
    MainRoutingModule,
    DragDropModule,
    DndModule,

  ],
  providers: [
    DragService
  ],
})
export class MainModule { }
