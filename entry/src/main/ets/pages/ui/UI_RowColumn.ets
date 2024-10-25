import { getTitleParams, TitleBar } from '../../components/TitleBar';

@Entry
@Component
struct UI_RowColumn {
  @State title: string = '';
  bgColor: ResourceColor = '#E7E7E7'
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
                Text().width(30).height(100).backgroundColor(Color.Blue)
                Text().width(30).height(100).backgroundColor(Color.Red)
                Text().width(30).height(100).backgroundColor(Color.Gray)
                Text().width(30).height(100).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)

              Column() {
                Text().width(100).height(25).backgroundColor(Color.Blue)
                Text().width(100).height(25).backgroundColor(Color.Red)
                Text().width(100).height(25).backgroundColor(Color.Gray)
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
                Text().width(30).height(130).backgroundColor(Color.Blue)
                Text().width(30).height(130).backgroundColor(Color.Red)
                Text().width(30).height(130).backgroundColor(Color.Gray)
                Text().width(30).height(130).backgroundColor(Color.Green)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .padding(10)

              Column({ space: 10 }) {
                Text().width(100).height(25).backgroundColor(Color.Blue)
                Text().width(100).height(25).backgroundColor(Color.Red)
                Text().width(100).height(25).backgroundColor(Color.Gray)
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
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.End)

                Text('End').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }

            Row({ space: 20 }) {
              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.SpaceBetween)

                Text('SpaceBetween').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.SpaceAround)

                Text('SpaceAround').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height(100).backgroundColor(Color.Blue)
                  Text().width(20).height(100).backgroundColor(Color.Red)
                  Text().width(20).height(100).backgroundColor(Color.Gray)
                }
                .width('100%')
                .backgroundColor(this.bgColor)
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
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.End)

                Text('End').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)
            }

            Row({ space: 20 }) {
              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.SpaceBetween)

                Text('SpaceBetween').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .justifyContent(FlexAlign.SpaceAround)

                Text('SpaceAround').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('100%').height(20).backgroundColor(Color.Blue)
                  Text().width('100%').height(20).backgroundColor(Color.Red)
                  Text().width('100%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
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
                  Text().width(20).height('50%').backgroundColor(Color.Blue)
                  Text().width(20).height('50%').backgroundColor(Color.Red)
                  Text().width(20).height('50%').backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .alignItems(VerticalAlign.Top)

                Text('Top').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height('50%').backgroundColor(Color.Blue)
                  Text().width(20).height('50%').backgroundColor(Color.Red)
                  Text().width(20).height('50%').backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .alignItems(VerticalAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Row() {
                  Text().width(20).height('50%').backgroundColor(Color.Blue)
                  Text().width(20).height('50%').backgroundColor(Color.Red)
                  Text().width(20).height('50%').backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
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
                  Text().width('50%').height(20).backgroundColor(Color.Blue)
                  Text().width('50%').height(20).backgroundColor(Color.Red)
                  Text().width('50%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .alignItems(HorizontalAlign.Start)

                Text('Start').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('50%').height(20).backgroundColor(Color.Blue)
                  Text().width('50%').height(20).backgroundColor(Color.Red)
                  Text().width('50%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
                .alignItems(HorizontalAlign.Center)

                Text('Center').fontSize(10).maxLines(1)
              }
              .layoutWeight(1)

              Column() {
                Column() {
                  Text().width('50%').height(20).backgroundColor(Color.Blue)
                  Text().width('50%').height(20).backgroundColor(Color.Red)
                  Text().width('50%').height(20).backgroundColor(Color.Gray)
                }
                .width('100%')
                .height(100)
                .backgroundColor(this.bgColor)
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
                Text('1').height('100%').layoutWeight(1).backgroundColor(Color.Blue)
                Text('2').height('100%').layoutWeight(1).backgroundColor(Color.Red)
                Text('3').height('100%').layoutWeight(1).backgroundColor(Color.Gray)
              }
              .height(30)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .padding(10)

              Row() {
                Text('1').height('100%').layoutWeight(1).backgroundColor(Color.Blue)
                Text('2').height('100%').layoutWeight(1).backgroundColor(Color.Red)
                Text('3').height('100%').layoutWeight(1).backgroundColor(Color.Gray)
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
                Text('1').width('100%').layoutWeight(1).backgroundColor(Color.Blue)
                Text('2').width('100%').layoutWeight(1).backgroundColor(Color.Red)
                Text('3').width('100%').layoutWeight(1).backgroundColor(Color.Gray)
              }
              .height(60)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .layoutWeight(1)
              .padding(10)

              Column() {
                Text('1').width('100%').layoutWeight(1).backgroundColor(Color.Blue)
                Text('2').width('100%').layoutWeight(1).backgroundColor(Color.Red)
                Text('3').width('100%').layoutWeight(1).backgroundColor(Color.Gray)
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