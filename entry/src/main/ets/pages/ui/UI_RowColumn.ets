import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';

@Entry
@Component
struct UI_RowColumn {
  @State title: string = '';
  private scroller = new Scroller()

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      List() {
        ListItem() {
          Column() {
            Text('Row/Column').padding(10)
            Row({ space: 20 }) {
              Row() {
                Text().width(30).height(100).backgroundColor(bgColor1)
                Text().width(30).height(100).backgroundColor(bgColor2)
                Text().width(30).height(100).backgroundColor(bgColor3)
                Text().width(30).height(100).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)

              Column() {
                Text().width(100).height(25).backgroundColor(bgColor1)
                Text().width(100).height(25).backgroundColor(bgColor2)
                Text().width(100).height(25).backgroundColor(bgColor3)
                Text().width(100).height(25).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)
            }
          }
          .width('100%')
        }


        ListItem() {
          Column() {
            Text('Row/Column设置子组件间隔为10').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Row({ space: 10 }) {
                Text().width(30).height(130).backgroundColor(bgColor1)
                Text().width(30).height(130).backgroundColor(bgColor2)
                Text().width(30).height(130).backgroundColor(bgColor3)
                Text().width(30).height(130).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)

              Column({ space: 10 }) {
                Text().width(100).height(25).backgroundColor(bgColor1)
                Text().width(100).height(25).backgroundColor(bgColor2)
                Text().width(100).height(25).backgroundColor(bgColor3)
                Text().width(100).height(25).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)
            }
          }
          .width('100%')
        }

        ListItem() {
          Column() {
            Text('Row主轴对齐方式').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.End)

                Text('End').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }

            Row({ space: 20 }) {
              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceBetween)

                Text('SpaceBetween').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceAround)

                Text('SpaceAround').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(bgColor1)
                  Text().width(20).height(100).backgroundColor(bgColor2)
                  Text().width(20).height(100).backgroundColor(bgColor3)
                }
                .width('100%')
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceEvenly)

                Text('SpaceEvenly').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }
            .margin({ top: 10 })
          }
        }

        ListItem() {
          Column() {
            Text('Column主轴对齐方式').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.End)

                Text('End').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }

            Row({ space: 20 }) {
              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceBetween)

                Text('SpaceBetween').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceAround)

                Text('SpaceAround').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(bgColor1)
                  Text().width('100%').height(20).backgroundColor(bgColor2)
                  Text().width('100%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .justifyContent(FlexAlign.SpaceEvenly)

                Text('SpaceEvenly').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }
            .margin({ top: 10 })
          }
        }

        ListItem() {
          Column() {
            Text('Row交叉轴对齐方式（垂直方向对齐）').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Column() {
                Row() {
                  Text().width(20).height('50%').backgroundColor(bgColor1)
                  Text().width(20).height('50%').backgroundColor(bgColor2)
                  Text().width(20).height('50%').backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(VerticalAlign.Top)

                Text('Top').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height('50%').backgroundColor(bgColor1)
                  Text().width(20).height('50%').backgroundColor(bgColor2)
                  Text().width(20).height('50%').backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(VerticalAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height('50%').backgroundColor(bgColor1)
                  Text().width(20).height('50%').backgroundColor(bgColor2)
                  Text().width(20).height('50%').backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(VerticalAlign.Bottom)

                Text('Bottom').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }
          }
        }

        ListItem() {
          Column() {
            Text('Column交叉轴对齐方式（水平方向对齐）').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Column() {
                Column() {
                  Text().width('50%').height(20).backgroundColor(bgColor1)
                  Text().width('50%').height(20).backgroundColor(bgColor2)
                  Text().width('50%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(HorizontalAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('50%').height(20).backgroundColor(bgColor1)
                  Text().width('50%').height(20).backgroundColor(bgColor2)
                  Text().width('50%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(HorizontalAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('50%').height(20).backgroundColor(bgColor1)
                  Text().width('50%').height(20).backgroundColor(bgColor2)
                  Text().width('50%').height(20).backgroundColor(bgColor3)
                }
                .width('100%')
                .height(100)
                .backgroundColor(bgColor0)
                .alignItems(HorizontalAlign.End)

                Text('End').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }
          }
        }

        ListItem() {
          Column() {
            Text('Row布局翻转').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Row() {
                Text('1').height('100%').layoutWeight(1).backgroundColor(bgColor1)
                Text('2').height('100%').layoutWeight(1).backgroundColor(bgColor2)
                Text('3').height('100%').layoutWeight(1).backgroundColor(bgColor3)
              }
              .height(30)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .padding(10)

              Row() {
                Text('1').height('100%').layoutWeight(1).backgroundColor(bgColor1)
                Text('2').height('100%').layoutWeight(1).backgroundColor(bgColor2)
                Text('3').height('100%').layoutWeight(1).backgroundColor(bgColor3)
              }
              .height(30)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .reverse(true)
              .padding(10)
            }
            Text('Column布局翻转').margin({ top: 30 }).padding(10)
            Row({ space: 20 }) {
              Column() {
                Text('1').width('100%').layoutWeight(1).backgroundColor(bgColor1)
                Text('2').width('100%').layoutWeight(1).backgroundColor(bgColor2)
                Text('3').width('100%').layoutWeight(1).backgroundColor(bgColor3)
              }
              .height(60)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .padding(10)

              Column() {
                Text('1').width('100%').layoutWeight(1).backgroundColor(bgColor1)
                Text('2').width('100%').layoutWeight(1).backgroundColor(bgColor2)
                Text('3').width('100%').layoutWeight(1).backgroundColor(bgColor3)
              }
              .height(60)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .reverse(true)
              .padding(10)
            }
          }
        }
      }
      .width('100%')
      .layoutWeight(1)
      .edgeEffect(EdgeEffect.Spring)
    }
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }
}