import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Title } from '@angular/platform-browser';
import { title } from 'process';
import{Drag} from 'src/app/models/drag';
import { CommonService } from './common.service';


@Component({
  selector: 'app-dragdrop',
  templateUrl: './dragdrop.component.html',
  styleUrls: ['./dragdrop.component.scss']
})
export class DragdropComponent implements OnInit {

  private draggableElements = 2;
  private zonePrefix = 'zone-';
  public droppableObjects: Array<any> = [];
  public draggableObjects: Array<Array<any>> = [[], [], [],[]];
  open:boolean = false;
  rowSelected :any= {};
  modaladd=false;
  openModal:any;
//title=['todo'];
userobj={
  id:'',
  title:''
}


  registerform= new FormGroup({
    title:new FormControl('',[Validators.required,Validators.minLength(2)]),
    description:new FormControl('',[Validators.required,Validators.minLength(2)]),
    id:new FormControl('',[Validators.required]),
    date:new FormControl('',[Validators.required]),
name:new FormControl('',[Validators.required])
    })





  constructor(private commonService:CommonService
    ) { }

  ngOnInit(): void {
    this.getLatestUser();
    for (let i = 0; i < this.draggableElements; i++) {
      // Define the droppable objects
      this.droppableObjects.push({
        data: {
          column: i
        },
        zone: this.zonePrefix + i
      });
      // Define the draggable objects relative to their position
      this.draggableObjects[i].push({
        data: {
          id: i,
          payload: 'Some data you need to pass',
          name: 'Draggable item - ' + i,
          currentColumn: i,
        },
        zones: this.generateZones(i)
      });
    }
  }


   /**
   * @desc responsible for generating the zones that a draggable element can go too.
   * @param {number} zone - the zone that the draggable element is a part of
   * @returns Array<string> an array of zone IDs that the draggable element can be dropped into
   */
    private generateZones(zone: number): Array<string> {
      // Generate all available zones
      const zones: Array<string> = [];
      for (let i = 0; i < this.draggableElements; i++) {
        zones.push(this.zonePrefix + i);
      }
      // Remove the current zone
      zones.splice(zone, 1);
      return zones;
    }

    /**
     * @desc responsible for handling the zone drop event
     * @param {any} event - the event data specific to the implementation
     */
    public onZoneDrop(event: any) {
      // Update your data here
      // Add the droppable to the new zone, with updated data
      this.draggableObjects[event.zone.column].push({
        data: {
          id: event.data.id,
          payload: event.data.payload,
          name: event.data.name,
          currentColumn: event.zone.column
        },

        zones: this.generateZones(event.zone.column)
      });

      // Find the ID and remove it
      for (let i = 0; i < this.draggableObjects[event.data.currentColumn].length; i++) {
        if (event.data.id === this.draggableObjects[event.data.currentColumn][i].data.id) {
          // Remove the droppable from the old zone
          this.draggableObjects[event.data.currentColumn].splice(i, 1);
        }
      }

    }


    gotoadd(){

        let i=0
        // Define the droppable objects
        this.droppableObjects.push({
          data: {
            column: i
          },
          zone: this.zonePrefix + i
        });


      }

gotoadd1(){
  let i=0;
  this.draggableObjects[i].push({

    zones: this.generateZones(i)
  });

}


onSave() {
  this.modaladd=false;
  let i=0;
  this.draggableObjects[i].push({
    zones: this.generateZones(i)
  })

  console.log(this.registerform.value);
}
// related modal
allUser:any;
isEdit=false;
settitle(formObj:any){
this.openModal = false;
console.log(formObj)
  this.commonService.createUser(formObj).subscribe((response)=>{
    this.getLatestUser();
  })
  }
  getLatestUser(){

    this.commonService.getAllUser().subscribe((response)=>{
      this. allUser = response
    })
  }


}
