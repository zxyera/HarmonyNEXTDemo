import { getTitleParams, TitleBar } from '../../components/TitleBar';

@Entry
@Component
struct UI_RowColumn {
  @State title: string = '';

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      Scroll() {
        Column({ space: 5 }) {
          Row() {
            Text().width(50).height(100).backgroundColor(Color.Blue)
            Text().width(50).height(100).backgroundColor(Color.Red)
            Text().width(50).height(100).backgroundColor(Color.Gray)
            Text().width(50).height(100).backgroundColor(Color.Green)
          }
          .width('100%')
          .justifyContent(FlexAlign.Center)

          Text('Row ')
          Row({ space: 10 }) {
            Text().width(50).height(100).backgroundColor(Color.Blue)
            Text().width(50).height(100).backgroundColor(Color.Red)
            Text().width(50).height(100).backgroundColor(Color.Gray)
            Text().width(50).height(100).backgroundColor(Color.Green)
          }
          .width('100%')
          .justifyContent(FlexAlign.Center)

          Text('Row带Space')
        }
      }

    }
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }
}