import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor1, bgColor2, bgColor3 } from '../../data/Colors';

@Entry
@Component
struct UI_ColumnRowSplit {
  @State title: string = '';

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      ColumnSplit() {
        Text('1').width('100%').height(50).backgroundColor(bgColor1).textAlign(TextAlign.Center)
        Text('2').width('100%').height(150).backgroundColor(bgColor2).textAlign(TextAlign.Center)
      }
      .width('100%')
      .resizeable(true)

      RowSplit() {
        Text('1').height('100%').width(50).backgroundColor(bgColor1).textAlign(TextAlign.Center)
        Text('2').height('100%').width(250).backgroundColor(bgColor2).textAlign(TextAlign.Center)
      }
      .width('100%')
      .layoutWeight(1)
      .resizeable(true)
      .margin({ top: 20 })

      // .divider({
      //   startMargin: 10,
      //   endMargin: 100
      // })
    }
    .height('100%')
    .width('100%')
  }
}