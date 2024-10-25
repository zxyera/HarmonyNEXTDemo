import { getTitleParams, TitleBar } from '../../components/TitleBar';

@Entry
@Component
struct UI_Flex {
  bgColor: ResourceColor = '#E7E7E7'
  @State title: string = '';
  directions: FlexDirectionItem[] = [
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
  @State flexDirection: FlexDirectionItem = this.directions[0]
  @State isDirectionPopShow: boolean = false

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      List() {
        ListItem() {
          Column() {
            Text('Row排列，超出部分不可见').padding(10)
            Row() {
              Text().width(80).height(25).backgroundColor(Color.Blue)
              Text().width(80).height(25).backgroundColor(Color.Red)
              Text().width(80).height(25).backgroundColor(Color.Gray)
              Text().width(80).height(25).backgroundColor(Color.Green)
              Text().width(80).height(25).backgroundColor(Color.Yellow)
            }

            Text('Flex排列，子组件被压缩至全部可见').padding(10)
            Flex() {
              Text().width(80).height(25).backgroundColor(Color.Blue)
              Text().width(80).height(25).backgroundColor(Color.Red)
              Text().width(80).height(25).backgroundColor(Color.Gray)
              Text().width(80).height(25).backgroundColor(Color.Green)
              Text().width(80).height(25).backgroundColor(Color.Yellow)
            }
          }
          .width('100%')
        }

        ListItem() {
          Column() {
            Text() {
              Span('设置方向为')
              Span(`FlexDirection.${this.flexDirection.value}`)
                .fontColor(Color.Blue)
                .decoration({
                  type: TextDecorationType.Underline,
                  color: Color.Blue
                })
                .onClick(() => {
                  this.isDirectionPopShow = true
                })
            }.padding(10)
            .width('100%')
            .textAlign(TextAlign.Center)
            .bindPopup($$this.isDirectionPopShow,
              {
                builder: this.directionPopItems(), arrowPointPosition: ArrowPointPosition.END,
                onStateChange: (event) => {
                  this.isDirectionPopShow = event.isVisible
                }
              })

            Flex({ direction: this.flexDirection.direction, alignItems: ItemAlign.Auto }) {
              Text().width(80).height(25).backgroundColor(Color.Blue)
              Text().width(80).height(25).backgroundColor(Color.Red)
              Text().width(80).height(25).backgroundColor(Color.Gray)
            }
            .width('100%')
            .height(100)
            .backgroundColor(this.bgColor)
          }
        }

        ListItem() {
          Column() {
            Text('交叉轴对齐方式').padding(10)
            Row({ space: 20 }) {
              Column() {
                Flex({ alignItems: ItemAlign.Auto }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('Auto')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.Start }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('Start')
              }
              .layoutWeight(1)
            }
            .width('100%')

            Row({ space: 20 }) {
              Column() {
                Flex({ alignItems: ItemAlign.Center }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('Center')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.End }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('End')
              }
              .layoutWeight(1)
            }
            .width('100%')
            .margin({ top: 20 })

            Row({ space: 20 }) {
              Column() {
                Flex({ alignItems: ItemAlign.Baseline }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('Baseline')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.Stretch }) {
                  Text().width(30).height(20).backgroundColor(Color.Blue)
                  Text().width(30).height(40).backgroundColor(Color.Red)
                  Text().width(30).height(30).backgroundColor(Color.Gray)
                }
                .backgroundColor(this.bgColor)
                .height(50)

                Text('Stretch')
              }
              .layoutWeight(1)
            }
            .width('100%')
            .margin({ top: 20 })
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
  directionPopItems() {
    Column() {
      ForEach(this.directions, (item: FlexDirectionItem) => {
        Text(item.value).width('50%').height(30)
          .onClick(() => {
            this.flexDirection = item
            this.isDirectionPopShow = false
          })
      })
    }
    .padding(20)
  }
}

interface FlexDirectionItem {
  direction: FlexDirection
  value: string
}