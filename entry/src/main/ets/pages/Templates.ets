import { bgColor0, bgColor1, bgColor2, bgColor3 } from "../data/Colors"
import { LengthMetrics } from "@kit.ArkUI"

@Builder
export function titleText(title: string) {
  Text(title)
    .width('100%')
    .fontColor(Color.Black)
    .fontSize(20)
    .fontWeight(FontWeight.Bold)
    .padding({ top: 10, bottom: 10 })
}

@Builder
export function subtitleText(title: string) {
  Text(title)
    .fontColor(Color.Black)
    .fontSize(16)
    .padding({ top: 10, bottom: 10 })
}

@Component
export struct TemplateContent {
  @BuilderParam content: () => void
  title?: string
  subtitle?: string
  items: string[] = []
  onPopupClick?: (index: number) => void
  @State subtitleSuffix: string = ''
  @State isShowPopup: boolean = false

  aboutToAppear(): void {
    if (this.items.length > 0) {
      this.subtitleSuffix = this.items[0]
    }
  }

  build() {
    Column() {
      if (this.title) {
        titleText(this.title)
      }

      Row() {
        if (this.onPopupClick) {
          Text('更换')
            .fontColor(Color.Blue)
            .padding({ top: 10, bottom: 10, left: 10 })
            .decoration({
              type: TextDecorationType.Underline,
              color: Color.Blue
            })
            .bindPopup($$this.isShowPopup, {
              builder: this.popupItems,
              onStateChange: (event) => {
                this.isShowPopup = event.isVisible
              }
            })
            .onClick(() => {
              this.isShowPopup = true
            })
        }
        if (this.subtitle) {
          Row() {
            subtitleText(this.subtitle)
            Text(this.subtitleSuffix)
          }
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)

      this.content()
    }
    .width('100%')
  }

  @Builder
  popupItems() {
    Column() {
      ForEach(this.items, (item: string, index: number) => {
        Text(item).width('50%').height(40)
          .onClick(() => {
            if (this.onPopupClick) {
              this.onPopupClick(index)
              this.subtitleSuffix = item
              this.isShowPopup = false
            }
          })
      })
    }
    .padding(20)
  }
}

@Builder
export function buildRow(params: SizeParams) {
  Row({ space: params.space }) {
    Text('1').width(params.itemWidth).height(params.itemHeight).backgroundColor(bgColor1).fontSize(8)
    Text('2')
      .width(params.itemWidth2 ?? params.itemWidth)
      .height(params.itemHeight3 ?? params.itemHeight)
      .backgroundColor(bgColor2)
      .fontSize(8)
    Text('3')
      .width(params.itemWidth3 ?? params.itemWidth)
      .height(params.itemHeight3 ?? params.itemHeight)
      .backgroundColor(bgColor3)
      .fontSize(8)
  }
  .width(params.width)
  .height(params.height)
  .justifyContent(params.flexAlign)
  .alignItems(params.verticalAlign)
  .backgroundColor(params.bgColor ?? bgColor0)
  .padding(params.padding)
  .reverse(params.reverse ?? false)
}

@Builder
export function buildColumn(params: SizeParams) {
  Column({ space: params.space }) {
    Text('1').width(params.itemWidth).height(params.itemHeight).backgroundColor(bgColor1).fontSize(8)
    Text('2')
      .width(params.itemWidth2 ?? params.itemWidth)
      .height(params.itemHeight2 ?? params.itemHeight)
      .backgroundColor(bgColor2)
      .fontSize(8)
    Text('3')
      .width(params.itemWidth3 ?? params.itemWidth)
      .height(params.itemHeight3 ?? params.itemHeight)
      .backgroundColor(bgColor3)
      .fontSize(8)
  }
  .width(params.width)
  .height(params.height)
  .justifyContent(params.flexAlign)
  .alignItems(params.horizontalAlign)
  .backgroundColor(params.bgColor ?? bgColor0)
  .padding(params.padding)
  .reverse(params.reverse ?? false)
}

@Builder
export function buildFlex(params: FlexParams) {
  Flex({
    direction: params.direction,
    wrap: params.wrap,
    justifyContent: params.justifyContent,
    alignItems: params.alignItems,
    alignContent: params.alignContent,
    space: {
      main: LengthMetrics.vp(params.mainSpace ?? 0),
      cross: LengthMetrics.vp(params.crossSpace ?? 0)
    }
  }) {
    Text('1').width(params.itemWidth).height(params.itemHeight).backgroundColor(bgColor1).fontSize(8)
    Text('2')
      .width(params.itemWidth2 ?? params.itemWidth)
      .height(params.itemHeight2 ?? params.itemHeight)
      .backgroundColor(bgColor2)
      .fontSize(8)
    Text('3')
      .width(params.itemWidth3 ?? params.itemWidth)
      .height(params.itemHeight3 ?? params.itemHeight)
      .backgroundColor(bgColor3)
      .fontSize(8)
  }
  .width(params.width)
  .height(params.height)
  .backgroundColor(params.bgColor ?? bgColor0)
}

export class BaseParams {
  itemWidth: Length = 0
  itemHeight: Length = 0
  itemWidth2?: Length = 0
  itemHeight2?: Length = 0
  itemWidth3?: Length = 0
  itemHeight3?: Length = 0
  width?: Length
  height?: Length
  bgColor?: ResourceColor
}

@Observed
class SizeParams extends BaseParams {
  space?: string | number
  flexAlign?: FlexAlign
  verticalAlign?: VerticalAlign
  horizontalAlign?: HorizontalAlign
  padding?: Padding | Length | LocalizedPadding
  reverse?: boolean
}

@Observed
class FlexParams extends BaseParams {
  direction?: FlexDirection
  wrap?: FlexWrap
  justifyContent?: FlexAlign
  alignItems?: ItemAlign
  alignContent?: FlexAlign
  mainSpace?: number
  crossSpace?: number
}

export interface Base {
  value: string
}

export interface AlignmentItem extends Base {
  alignment: Alignment
}

export interface FlexAlignItem extends Base {
  flexAlign: FlexAlign
}

export interface VerticalAlignItem extends Base {
  verticalAlign: VerticalAlign
}

export interface HorizontalAlignItem extends Base {
  horizontalAlign: HorizontalAlign
}

export interface FlexDirectionItem extends Base {
  direction: FlexDirection
}

export interface ItemAlignItem extends Base {
  itemAlign: ItemAlign
}

export interface FlexWrapItem extends Base {
  flexWrap?: FlexWrap
}
