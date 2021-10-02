import { Component, OnInit } from '@angular/core';
import { CdkDragDrop, moveItemInArray, transferArrayItem } from '@angular/cdk/drag-drop';
import { Board } from 'src/app/models/board.model';
import { Column } from 'src/app/models/column.model';
@Component({
  selector: 'app-formio',
  templateUrl: './formio.component.html',
  styleUrls: ['./formio.component.scss']
})
export class FormioComponent implements OnInit {


  constructor() { }
  board: Board = new Board('Test Board', [
    new Column('Ideas', [
     {image:"image",
       title:"abc",
    id:100,
  date:2021-10-1},
    {image:"image",
      title:"qwe",
    id:101,
    date:2-10-2021},
    {image:"image",
      title:"radio",
    id:102,
    date:3-10-2021},
    ]),

    new Column('Todo', [
      {image:"image",
        title:"para",
      id:103,
      date:4-10-2021},
      {image:"image",
        title:"check",
      id:104,
      date:2-3-2020},
      {image:"image",
        title:"select",
      id:105,
      date:2-3-2021},
    ]),
    new Column('done', [
      {image:"image",
        title:"ab",
      id:106,
      date:2-3-2020},
      {image:"image",
        title:"pqr",
      id:107,
      date:3-3-2021},
      {image:"image",
        title:"hi",
      id:108,
      date:2-3-2020},
    ]),
    new Column('nice', [
      {image:"image",
        title:"mno",
      id:109,
      date:2-9-2021},
      {image:"image",
        title:"klm",
      id:110,
      date:2-3-2021},
      {image:"image",
        title:"select",
      id:4,
      date:2-3-2021},
    ])

  ]);
  ngOnInit(): void {

  }
  drop(event: CdkDragDrop<string[]>) {
    if (event.previousContainer === event.container) {
      moveItemInArray(event.container.data, event.previousIndex, event.currentIndex);
    } else {
      transferArrayItem(event.previousContainer.data,
        event.container.data,
        event.previousIndex,
        event.currentIndex);
    }
  }
}
