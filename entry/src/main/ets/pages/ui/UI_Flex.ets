import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';
import { LengthMetrics, LengthMetricsUnit } from '@kit.ArkUI';
import { buildFlex, buildRow, FlexDirectionItem, FlexWrapItem, ItemAlignItem, TemplateContent } from '../Templates';

@Entry
@Component
struct UI_Flex {
  @State title: string = '';
  private directions: FlexDirectionItem[] = [
    {
      direction: FlexDirection.Row,
      value: 'Row'
    },
    {
      direction: FlexDirection.Column,
      value: 'Column'
    },
    {
      direction: FlexDirection.RowReverse,
      value: 'RowReverse'
    },
    {
      direction: FlexDirection.ColumnReverse,
      value: 'ColumnReverse'
    }
  ]
  private itemAligns: ItemAlignItem[] = [
    {
      value: 'Auto',
      itemAlign: ItemAlign.Auto
    },
    {
      value: 'Start',
      itemAlign: ItemAlign.Start
    },
    {
      value: 'Center',
      itemAlign: ItemAlign.Center
    },
    {
      value: 'End',
      itemAlign: ItemAlign.End
    },
    {
      value: 'Baseline',
      itemAlign: ItemAlign.Baseline
    },
    {
      value: 'Stretch',
      itemAlign: ItemAlign.Stretch
    },
  ]
  private flexWraps: FlexWrapItem[] = [
    {
      value: 'NoWrap',
      flexWrap: FlexWrap.NoWrap
    },
    {
      value: 'Wrap',
      flexWrap: FlexWrap.Wrap
    },
    {
      value: 'WrapReverse',
      flexWrap: FlexWrap.WrapReverse
    },
  ]
  @State currentFlexDirection: FlexDirectionItem = this.directions[0]
  @State currentItemAlign: ItemAlignItem = this.itemAligns[0]
  // 设置交叉轴对齐方式设置的排列方向
  @State currentCrossFlexDirection: FlexDirectionItem = this.directions[0]
  @State isCrossDirectionPopShow: boolean = false
  @State currentWrapDirection: FlexDirectionItem = this.directions[0]
  @State isWrapPopShow: boolean = false
  @State currentFlexWrap: FlexWrapItem = this.flexWraps[0]

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      List() {
        ListItem() {
          TemplateContent({
            title: '1. Row排列，超出部分不可见',
            content: () => {
              this.buildRowPreview()
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '2. Flex排列，子组件被压缩至全部可见',
            content: () => {
              this.buildFlexPreview()
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '3. Flex排列方向',
            subtitle: '当前排列方向：',
            items: this.directions.map(item => item.value),
            content: () => {
              this.buildFlexDirection()
            },
            onPopupClick: (index: number) => {
              this.currentFlexDirection = this.directions[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '4. Flex交叉轴对齐方式',
            subtitle: '当前交叉轴对齐方式：',
            items: this.itemAligns.map(item => item.value),
            content: () => {
              this.buildFlexCrossAlign()
            },
            onPopupClick: (index: number) => {
              this.currentItemAlign = this.itemAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '5. 布局换行换列',
            subtitle: '当前换行策略：',
            items: this.flexWraps.map(item => item.value),
            content: () => {
              this.buildFlexWrap()
            },
            onPopupClick: (index: number) => {
              this.currentFlexWrap = this.flexWraps[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '6. 布局换行换列',
            subtitle: '当前换行策略：',
            items: this.flexWraps.map(item => item.value),
            content: () => {
              this.buildFlexWrap()
            },
            onPopupClick: (index: number) => {
              this.currentFlexWrap = this.flexWraps[index]
            }
          })
        }


        ListItem() {
          Column() {
            Text('多行内容对齐').padding(10)
            Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.Center }) {
              Text().width('50%').height(25).backgroundColor(bgColor1)
              Text().width('50%').height(25).backgroundColor(bgColor2)
              Text().width('50%').height(25).backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)

            Text('不换列，布局被压缩').fontSize(12)

            Row({ space: 20 }) {
              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.Start }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)

              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.Center }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)

              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.End }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)
            }
            .width('100%')
            .height(100)
            .margin({ top: 20 })

            Row() {
              Text('Start')
              Text('Center')
              Text('End')
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceAround)

            Text('换列，第三个组件自动换列').fontSize(12)

            Row({ space: 20 }) {
              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceBetween }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)

              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceAround }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)

              Flex({ wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceEvenly }) {
                Text().height(25).width('50%').backgroundColor(bgColor1)
                Text().height(25).width('50%').backgroundColor(bgColor2)
                Text().height(25).width('50%').backgroundColor(bgColor3)
              }
              .height('100%')
              .backgroundColor(bgColor0)
              .layoutWeight(1)
            }
            .width('100%')
            .height(100)
            .margin({ top: 20 })

            Row() {
              Text('SpaceBetween')
              Text('SpaceAround')
              Text('SpaceEvenly')
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceAround)
          }
        }

        ListItem() {
          Column() {
            Text('子组件间距').padding(10)
            Flex({
              wrap: FlexWrap.Wrap, space: {
                main: LengthMetrics.vp(10),
                cross: LengthMetrics.vp(10),
              }
            }) {
              Text().height(25).width('45%').backgroundColor(bgColor1)
              Text().height(25).width('45%').backgroundColor(bgColor2)
              Text().height(25).width('45%').backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)
          }
        }
      }
      .width('100%')
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
  }

  @Builder
  buildRowPreview() {
    buildRow({
      itemWidth: '40%',
      itemHeight: 30,
      width: '100%',
      height: 40
    })
  }

  @Builder
  buildFlexPreview() {
    buildFlex({
      itemWidth: '40%',
      itemHeight: 30,
      width: '100%',
      height: 40
    })
  }

  @Builder
  buildFlexDirection() {
    buildFlex({
      itemWidth: '40%',
      itemHeight: 30,
      width: '100%',
      height: 120,
      direction: this.currentFlexDirection.direction
    })
  }

  /**
   * Flex交叉轴对齐方式
   */
  @Builder
  buildFlexCrossAlign() {
    Column() {
      Text() {
        Span('更换')
          .fontColor(Color.Blue)
          .decoration({
            type: TextDecorationType.Underline,
            color: Color.Blue
          })
          .onClick(() => {
            this.isCrossDirectionPopShow = true
          })
        Span(`当前排列方向：${this.currentCrossFlexDirection.value}`)
      }
      .padding(10)
      .width('100%')
      .bindPopup($$this.isCrossDirectionPopShow, {
        builder: () => {
          this.directionPopItems((item) => {
            this.currentCrossFlexDirection = item
            this.isCrossDirectionPopShow = false
          })
        },
        onStateChange: (event => {
          this.isCrossDirectionPopShow = event.isVisible
        })
      })

      buildFlex({
        itemWidth: 80,
        itemHeight: 20,
        itemHeight2: 50,
        itemHeight3: 40,
        width: '100%',
        height: 140,
        direction: this.currentCrossFlexDirection.direction,
        alignItems: this.currentItemAlign.itemAlign
      })
    }
  }

  /**
   * 布局换行
   */
  @Builder
  buildFlexWrap() {
    Column() {
      Text() {
        Span('更换')
          .fontColor(Color.Blue)
          .decoration({
            type: TextDecorationType.Underline,
            color: Color.Blue
          })
          .onClick(() => {
            this.isWrapPopShow = true
          })
        Span(`当前排列方向：${this.currentWrapDirection.value}`)
      }
      .padding(10)
      .width('100%')
      .bindPopup($$this.isWrapPopShow, {
        builder: () => {
          this.directionPopItems((item) => {
            this.currentWrapDirection = item
            this.isWrapPopShow = false
          })
        },
        onStateChange: (event => {
          this.isWrapPopShow = event.isVisible
        })
      })

      buildFlex({
        itemWidth: '45%',
        itemHeight: 60,
        width: '100%',
        height: 140,
        direction: this.currentWrapDirection.direction,
        wrap: this.currentFlexWrap.flexWrap
      })
    }
  }

  @Builder
  directionPopItems(onClick: (item: FlexDirectionItem) => void) {
    Column() {
      ForEach(this.directions, (item: FlexDirectionItem) => {
        Text(item.value).width('50%').height(30)
          .onClick(() => {
            onClick(item)
          })
      })
    }
    .padding(20)
  }
}

