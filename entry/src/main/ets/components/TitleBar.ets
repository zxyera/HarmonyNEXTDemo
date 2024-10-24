import { router } from "@kit.ArkUI"

@Component
@Preview
export struct TitleBar {
  title: string = '123'

  build() {
    Row() {
      Image($r('app.media.icon_back'))
        .width(40)
        .fillColor(Color.Black)
        .backgroundColor('#EEEEEE')
        .borderRadius(30)
        .padding(10)
        .onClick(() => {
          router.back()
        })

      Text(this.title)
        .fontSize(20)
        .margin({ left: 10 })
        .layoutWeight(1)
        .maxLines(1)
        .sharedTransition(`id_${this.title}`, { duration: 200 })
    }
    .width('100%')
    .padding({
      left: 20,
      right: 20,
      top: 10,
      bottom: 10
    })
  }
}

export function getTitleParams(): string {
  let params: Record<string, Object> = router.getParams() as Record<string, Object>
  let title = params['title'] as string
  return title
}