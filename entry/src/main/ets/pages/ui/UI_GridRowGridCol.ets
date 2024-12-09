import { getTitleParams, TitleBar } from '../../components/TitleBar';

@Entry
@Component
struct UI_GridRowGridCol {
  @State title: string = '';
  @State bgColors: Color[] =
    [Color.Red, Color.Orange, Color.Yellow, Color.Green, Color.Pink, Color.Grey, Color.Blue, Color.Brown];

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })


      GridRow() {
        GridCol({ span: 12 }) {

        }
        .backgroundColor(Color.Blue)
        .width('100%')
        .height('90%')

        GridCol({ span: 12 }) {

        }
        .width('100%')
        .height('10%')
        .backgroundColor(Color.Brown)
      }
      .width('100%')
      .height(300)
      .backgroundColor(Color.Gray)


      // GridRow() {
      //   GridCol({ order: 4 }) {
      //     Row() {
      //       Text('1')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Red)
      //   GridCol({ order: 3 }) {
      //     Row() {
      //       Text('2')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Orange)
      //   GridCol({ order: 2 }) {
      //     Row() {
      //       Text('3')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Yellow)
      //   GridCol({ order: 1 }) {
      //     Row() {
      //       Text('4')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Green)
      // }
      //
      // GridRow() {
      //   GridCol() {
      //     Row() {
      //       Text('1')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Red)
      //   GridCol() {
      //     Row() {
      //       Text('2')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Orange)
      //   GridCol() {
      //     Row() {
      //       Text('3')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Yellow)
      //   GridCol() {
      //     Row() {
      //       Text('4')
      //     }.width('100%').height('50vp')
      //   }.backgroundColor(Color.Green)
      // }

      // GridRow() {
      //   GridCol({ span: { sm: 12 } }) {
      //     GridRow() {
      //       GridCol({ span: { sm: 2 } }) {
      //         Row() {
      //           Text('left').fontSize(24)
      //         }
      //         .justifyContent(FlexAlign.Center)
      //         .height('90%')
      //       }.backgroundColor('#ff41dbaa')
      //
      //       GridCol({ span: { sm: 10 } }) {
      //         Row() {
      //           Text('right').fontSize(24)
      //         }
      //         .justifyContent(FlexAlign.Center)
      //         .height('90%')
      //       }.backgroundColor('#ff4168db')
      //     }
      //     .backgroundColor('#19000000')
      //   }
      //
      //   GridCol({ span: { sm: 12 } }) {
      //     Row() {
      //       Text('footer').width('100%').textAlign(TextAlign.Center)
      //     }.width('100%').height('10%').backgroundColor(Color.Pink)
      //   }
      // }.width('100%').height(300)


      // GridRow({
      //   columns: 6,
      //   breakpoints: {
      //     value: ['200vp', '300vp'],
      //     reference: BreakpointsReference.WindowSize
      //   }
      // }) {
      //   ForEach(this.bgColors, (color: Color, index?: number | undefined) => {
      //     GridCol() {
      //       Row() {
      //         Text(`${index}`)
      //       }.width("100%").height('50vp')
      //     }.backgroundColor(color)
      //   })
      // }
      //
      // GridRow({
      //   columns: 6,
      //   gutter: 20,
      //   breakpoints: {
      //     value: ['200vp', '300vp'],
      //     reference: BreakpointsReference.WindowSize
      //   }
      // }) {
      //   ForEach(this.bgColors, (color: Color, index?: number | undefined) => {
      //     GridCol() {
      //       Row() {
      //         Text(`${index}`)
      //       }.width("100%").height('50vp')
      //     }.backgroundColor(color)
      //   })
      // }
      // .margin({ top: 100 })
    }
    // GridRow({ columns: 8, gutter: 30 }) {
    //   GridCol() {
    //     // box1({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box2({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box3({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box1({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box2({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box3({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box2({ itemWidth: 100, itemHeight: 100 })
    //   }
    //
    //   GridCol() {
    //     box3({ itemWidth: 100, itemHeight: 100 })
    //   }
    // }
    .width('100%')
    // }
    .height('90%')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }
}