import { HomeData, HomeDataChildItem, HomeDataItem } from '../data/HomeData'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Text($r('app.string.app_name'))
        .width('100%')
        .fontColor(Color.Black)
        .fontSize(28)
        .fontWeight(FontWeight.Bolder)
        .padding(20)

      List() {
        ForEach(HomeData, (item: HomeDataItem) => {
          ListItemGroup({ header: this.header(item.group) }) {
            ForEach(item.items, (childItem: HomeDataChildItem) => {
              ListItem() {
                this.item(childItem)
              }
            })
          }
          .divider({ color: $r('app.color.color_E7E7E7'), strokeWidth: 0.5, startMargin: 20 })
        })
      }
      .width('100%')
      .sticky(StickyStyle.Header)
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
  }

  @Builder
  header(head: string) {
    Text(head)
      .width('100%')
      .padding(20)
      .backgroundColor($r('app.color.color_E7E7E7'))
      .fontWeight(FontWeight.Bold)
  }

  @Builder
  item(child: HomeDataChildItem) {
    Row() {
      Text(child.name)
        .layoutWeight(1)
        .fontSize(16)
        .sharedTransition(`id_${child.name}`, { duration: 200 })

      Image($r('sys.media.ohos_ic_compnent_titlebar_back'))
        .width(20)
        .fillColor($r('app.color.color_E7E7E7'))
        .rotate({ angle: 180 })
    }
    .width('100%')
    .padding(20)
    .onClick(() => {
      router.pushUrl({
        url: child.route,
        params: {
          title: child.name
        }
      })
    })
  }
}