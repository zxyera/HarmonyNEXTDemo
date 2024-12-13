import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { flexAligns, horizontalAligns, verticalAligns } from '../../data/Arrays';
import { FlexAlignItem, HorizontalAlignItem, VerticalAlignItem } from '../../data/Beans';
import { bgColor0 } from '../../data/Colors';
import { buildColumn, buildRow, TemplateContent, } from '../Templates';

@Entry
@Component
struct UI_RowColumn {
  @State title: string = '';
  @State rowColumnSpace: number = 0
  @State currentRowMainFlexAlign: FlexAlignItem = flexAligns[0]
  @State currentColumnMainFlexAlign: FlexAlignItem = flexAligns[0]
  @State currentRowCrossFlexAlign: VerticalAlignItem = verticalAligns[0]
  @State currentColumnCrossFlexAlign: HorizontalAlignItem = horizontalAligns[0]
  @State rowReverse: boolean = false
  @State columnReverse: boolean = false

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })

      List() {
        ListItem() {
          TemplateContent({
            title: '1. Row/Column效果图',
            content: () => {
              this.buildPreview()
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '2. Row/Column子组件间隔',
            content: () => {
              this.buildSpacePreview()
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '3. Row主轴对齐方式',
            subtitle: '当前方式：',
            content: () => {
              this.buildRowMainAlign()
            },
            items: flexAligns.map(item => item.value),
            onPopupClick: (index: number) => {
              this.currentRowMainFlexAlign = flexAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '4. Column主轴对齐方式',
            subtitle: '当前方式：',
            content: () => {
              this.buildColumnMainAlign()
            },
            items: flexAligns.map(item => item.value),
            onPopupClick: (index: number) => {
              this.currentColumnMainFlexAlign = flexAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '5. Row交叉轴对齐方式（垂直方向对齐）',
            subtitle: '当前方式：',
            content: () => {
              this.buildRowCrossAlign()
            },
            items: verticalAligns.map(item => item.value),
            onPopupClick: (index: number) => {
              this.currentRowCrossFlexAlign = verticalAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '6. Column交叉轴对齐方式（水平方向对齐）',
            subtitle: '当前方式：',
            content: () => {
              this.buildColumnCrossAlign()
            },
            items: horizontalAligns.map(item => item.value),
            onPopupClick: (index: number) => {
              this.currentColumnCrossFlexAlign = horizontalAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '7. Row布局翻转',
            content: () => {
              this.buildRowReverse()
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '8. Column布局翻转',
            content: () => {
              this.buildColumnReverse()
            }
          })
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

  /**
   * Row Column效果预览
   */
  @Builder
  buildPreview() {
    Row({ space: 20 }) {
      buildRow({
        itemWidth: 20,
        itemHeight: 100,
        space: 0,
        bgColor: bgColor0,
        flexAlign: FlexAlign.Center,
        padding: 10
      })

      buildColumn({
        itemWidth: 100,
        itemHeight: 25,
        bgColor: bgColor0,
        padding: 10
      })
    }
  }

  /**
   * 设置space
   */
  @Builder
  buildSpacePreview() {
    Column() {
      Row({ space: 20 }) {
        buildRow({
          itemWidth: 30,
          itemHeight: 130,
          space: this.rowColumnSpace,
          bgColor: bgColor0,
          padding: 10
        })
        buildColumn({
          itemWidth: 100,
          itemHeight: 25,
          space: this.rowColumnSpace,
          bgColor: bgColor0,
          padding: 10
        })
      }

      Slider({
        min: 0,
        max: 20,
        step: 1,
        value: this.rowColumnSpace,
      })
        .onChange((value) => {
          this.rowColumnSpace = value
        })
        .showSteps(true)
        .showTips(true, this.rowColumnSpace.toString())
    }
  }

  /**
   * Row主轴对齐方式
   */
  @Builder
  buildRowMainAlign() {
    buildRow({
      itemWidth: 25,
      itemHeight: 100,
      width: '100%',
      height: 130,
      bgColor: bgColor0,
      flexAlign: this.currentRowMainFlexAlign.flexAlign
    })
  }

  /**
   * Column主轴对齐方式
   */
  @Builder
  buildColumnMainAlign() {
    buildColumn({
      itemWidth: 100,
      itemHeight: 25,
      width: '100%',
      height: 130,
      bgColor: bgColor0,
      flexAlign: this.currentColumnMainFlexAlign.flexAlign
    })
  }

  /**
   * Row交叉轴对齐方式
   */
  @Builder
  buildRowCrossAlign() {
    buildRow({
      itemWidth: 25,
      itemHeight: 100,
      width: '100%',
      height: 130,
      bgColor: bgColor0,
      verticalAlign: this.currentRowCrossFlexAlign.verticalAlign
    })
  }

  /**
   * Column主轴对齐方式
   */
  @Builder
  buildColumnCrossAlign() {
    buildColumn({
      itemWidth: 100,
      itemHeight: 25,
      width: '100%',
      height: 130,
      bgColor: bgColor0,
      horizontalAlign: this.currentColumnCrossFlexAlign.horizontalAlign
    })
  }

  @Builder
  buildRowReverse() {
    Column() {
      Toggle({ type: ToggleType.Switch, isOn: $$this.rowReverse })
        .width(100)
        .height(50)
      buildRow({
        itemWidth: 50,
        itemHeight: 100,
        width: '100%',
        height: 130,
        bgColor: bgColor0,
        reverse: this.rowReverse
      })
    }
  }

  @Builder
  buildColumnReverse() {
    Column() {
      Toggle({ type: ToggleType.Switch, isOn: $$this.columnReverse })
        .width(100)
        .height(50)

      buildColumn({
        itemWidth: 150,
        itemHeight: 25,
        width: '100%',
        height: 130,
        bgColor: bgColor0,
        reverse: this.columnReverse
      })
    }
  }
}

