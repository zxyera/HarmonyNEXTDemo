import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';
import { LengthMetrics, LengthMetricsUnit } from '@kit.ArkUI';
import { buildFlex, buildRow, TemplateContent, UpdateLineTextTemplate } from '../Templates';
import { flexDirections, flexAligns, flexWraps, itemAligns } from '../../data/Arrays';
import { FlexAlignItem, FlexDirectionItem, FlexWrapItem, ItemAlignItem } from '../../data/Beans';

@Entry
@Component
struct UI_Flex {
  @State title: string = '';
  /**
   * 只设置布局方向
   */
  @State currentFlexDirection: FlexDirectionItem = flexDirections[0]
  /**
   * 只设置交叉轴对齐方式
   */
  @State currentItemAlign: ItemAlignItem = itemAligns[0]
  /**
   * 设置交叉轴对齐方式设置的排列方向
   */
  @State currentCrossFlexDirection: FlexDirectionItem = flexDirections[0]
  /**
   * 设置布局换行需要的变量
   */
  @State currentWrapDirection: FlexDirectionItem = flexDirections[0]
  @State currentFlexWrap: FlexWrapItem = flexWraps[0]
  /**
   * 设置交叉轴对齐方式需要的变量
   */
  @State currentCrossAxisAlignDirection: FlexDirectionItem = flexDirections[0]
  @State currentCrossAxisAlignWrap: FlexWrapItem = flexWraps[1]
  @State currentCrossAxisAlignFlexAlign: FlexAlignItem = flexAligns[0]
  /**
   * 设置子组件间隔需要的变量
   */
  @State currentChildSpaceDirection: FlexDirectionItem = flexDirections[0]
  @State childMainSpace: number = 0
  @State childCrossSpace: number = 0

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
            items: flexDirections.map(item => item.value),
            content: () => {
              this.buildFlexDirection()
            },
            onPopupClick: (index: number) => {
              this.currentFlexDirection = flexDirections[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '4. Flex交叉轴对齐方式',
            subtitle: '当前交叉轴对齐方式：',
            items: itemAligns.map(item => item.value),
            content: () => {
              this.buildFlexCrossAlign()
            },
            onPopupClick: (index: number) => {
              this.currentItemAlign = itemAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '5. 布局换行换列',
            subtitle: '当前换行策略：',
            items: flexWraps.map(item => item.value),
            content: () => {
              this.buildFlexWrap()
            },
            onPopupClick: (index: number) => {
              this.currentFlexWrap = flexWraps[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '6. 多行内容交叉轴对齐',
            subtitle: '当前交叉轴对齐方式：',
            items: flexAligns.map(item => item.value),
            content: () => {
              this.buildCrossAxisAlign()
            },
            onPopupClick: (index: number) => {
              this.currentCrossAxisAlignFlexAlign = flexAligns[index]
            }
          })
        }

        ListItem() {
          TemplateContent({
            title: '7. 子组件间隔',
            content: () => {
              this.buildSpace()
            }
          })
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
      UpdateLineTextTemplate({
        label: '当前排列方向',
        items: flexDirections.map(item => item.value),
        onItemClick: (index: number) => {
          this.currentCrossFlexDirection = flexDirections[index]
        }
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
      UpdateLineTextTemplate({
        label: '当前排列方向',
        items: flexDirections.map(item => item.value),
        onItemClick: (index: number) => {
          this.currentWrapDirection = flexDirections[index]
        }
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

  /**
   * 交叉轴对齐方式
   */
  @Builder
  buildCrossAxisAlign() {
    Column() {
      UpdateLineTextTemplate({
        label: '当前排列方向',
        items: flexDirections.map(item => item.value),
        onItemClick: (index: number) => {
          this.currentCrossAxisAlignDirection = flexDirections[index]
        }
      })
      UpdateLineTextTemplate({
        label: '当前换行策略',
        items: flexWraps.map(item => item.value),
        defaultItem: this.currentCrossAxisAlignWrap.value,
        onItemClick: (index: number) => {
          this.currentCrossAxisAlignWrap = flexWraps[index]
        }
      })
      buildFlex({
        itemWidth: '35%',
        itemHeight: 40,
        width: '100%',
        height: 100,
        alignContent: this.currentCrossAxisAlignFlexAlign.flexAlign,
        direction: this.currentCrossAxisAlignDirection.direction,
        wrap: this.currentCrossAxisAlignWrap.flexWrap
      })
    }
  }

  @Builder
  buildSpace() {
    Column() {
      buildFlex({
        itemWidth: '35%',
        itemHeight: 40,
        width: '100%',
        height: 150,
        direction: this.currentChildSpaceDirection.direction,
        wrap: FlexWrap.Wrap,
        mainSpace: this.childMainSpace,
        crossSpace: this.childCrossSpace
      })

      Row() {
        Text('主轴间隔').width(70)
        Slider({
          min: 0,
          max: 60,
          step: 1,
          value: this.childMainSpace,
        })
          .onChange((value) => {
            this.childMainSpace = value
          })
          .layoutWeight(1)
          .showTips(true, this.childMainSpace.toString())
      }
      .padding({ right: 10 })

      Row() {
        Text('交叉轴间隔').width(70)
        Slider({
          min: 0,
          max: 60,
          step: 1,
          value: this.childCrossSpace,
        })
          .onChange((value) => {
            this.childCrossSpace = value
          })
          .layoutWeight(1)
          .showTips(true, this.childCrossSpace.toString())
      }
      .padding({ right: 10 })
    }
  }
}

