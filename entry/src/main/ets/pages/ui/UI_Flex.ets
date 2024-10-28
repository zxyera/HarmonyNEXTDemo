import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';
import { LengthMetrics, LengthMetricsUnit } from '@kit.ArkUI';

@Entry
@Component
struct UI_Flex {
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
              Text().width(80).height(25).backgroundColor(bgColor1)
              Text().width(80).height(25).backgroundColor(bgColor2)
              Text().width(80).height(25).backgroundColor(bgColor3)
              Text().width(80).height(25).backgroundColor(Color.Green)
              Text().width(80).height(25).backgroundColor(Color.Yellow)
            }

            Text('Flex排列，子组件被压缩至全部可见').padding(10)
            Flex() {
              Text().width(80).height(25).backgroundColor(bgColor1)
              Text().width(80).height(25).backgroundColor(bgColor2)
              Text().width(80).height(25).backgroundColor(bgColor3)
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
                .fontColor(bgColor1)
                .decoration({
                  type: TextDecorationType.Underline,
                  color: bgColor1
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
              Text().width(80).height(25).backgroundColor(bgColor1)
              Text().width(80).height(25).backgroundColor(bgColor2)
              Text().width(80).height(25).backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)
          }
        }

        ListItem() {
          Column() {
            Text('交叉轴对齐方式').padding(10)
            Row({ space: 20 }) {
              Column() {
                Flex({ alignItems: ItemAlign.Auto }) {
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
                .height(50)

                Text('Auto')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.Start }) {
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
                .height(50)

                Text('Start')
              }
              .layoutWeight(1)
            }
            .width('100%')

            Row({ space: 20 }) {
              Column() {
                Flex({ alignItems: ItemAlign.Center }) {
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
                .height(50)

                Text('Center')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.End }) {
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
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
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
                .height(50)

                Text('Baseline')
              }
              .layoutWeight(1)

              Column() {
                Flex({ alignItems: ItemAlign.Stretch }) {
                  Text().width(30).height(20).backgroundColor(bgColor1)
                  Text().width(30).height(40).backgroundColor(bgColor2)
                  Text().width(30).height(30).backgroundColor(bgColor3)
                }
                .backgroundColor(bgColor0)
                .height(50)

                Text('Stretch')
              }
              .layoutWeight(1)
            }
            .width('100%')
            .margin({ top: 20 })
          }
        }

        ListItem() {
          Column() {
            Text('布局换行').padding(10)
            Flex({ wrap: FlexWrap.NoWrap }) {
              Text().width('50%').height(25).backgroundColor(bgColor1)
              Text().width('50%').height(25).backgroundColor(bgColor2)
              Text().width('50%').height(25).backgroundColor(bgColor3)
            }
            .height(50)
            .backgroundColor(bgColor0)

            Text('不换行，布局被压缩').fontSize(12)

            Flex({ wrap: FlexWrap.Wrap }) {
              Text().width('50%').height(25).backgroundColor(bgColor1)
              Text().width('50%').height(25).backgroundColor(bgColor2)
              Text().width('50%').height(25).backgroundColor(bgColor3)
            }
            .height(50)
            .backgroundColor(bgColor0)
            .margin({ top: 20 })

            Text('换行，第三个组件自动换行').fontSize(12)

            Flex({ wrap: FlexWrap.WrapReverse }) {
              Text().width('50%').height(25).backgroundColor(bgColor1)
              Text().width('50%').height(25).backgroundColor(bgColor2)
              Text().width('50%').height(25).backgroundColor(bgColor3)
            }
            .height(50)
            .backgroundColor(bgColor0)
            .margin({ top: 20 })

            Text('翻转换行，主轴方向翻转').fontSize(12)
          }
        }

        ListItem() {
          Column() {
            Text('布局换列').padding(10)
            Flex({ direction: FlexDirection.Column, wrap: FlexWrap.NoWrap }) {
              Text().height('50%').width(100).backgroundColor(bgColor1)
              Text().height('50%').width(100).backgroundColor(bgColor2)
              Text().height('50%').width(100).backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)

            Text('不换列，布局被压缩').fontSize(12)

            Flex({ direction: FlexDirection.Column, wrap: FlexWrap.Wrap }) {
              Text().height('50%').width(100).backgroundColor(bgColor1)
              Text().height('50%').width(100).backgroundColor(bgColor2)
              Text().height('50%').width(100).backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)
            .margin({ top: 20 })

            Text('换列，第三个组件自动换列').fontSize(12)

            Flex({ direction: FlexDirection.Column, wrap: FlexWrap.WrapReverse }) {
              Text().height('50%').width(100).backgroundColor(bgColor1)
              Text().height('50%').width(100).backgroundColor(bgColor2)
              Text().height('50%').width(100).backgroundColor(bgColor3)
            }
            .width('100%')
            .height(100)
            .backgroundColor(bgColor0)
            .margin({ top: 20 })

            Text('翻转换列，主轴方向翻转').fontSize(12)
          }
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