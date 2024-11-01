import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';
import { AlignmentItem, TemplateContent } from '../Templates';
import json from '@ohos.util.json';

@Entry
@Component
struct UI_Stack {
  @State title: string = '';
  private alignmentItems: AlignmentItem[] = [
    {
      value: 'TopStart',
      alignment: Alignment.TopStart
    },
    {
      value: 'Top',
      alignment: Alignment.Top
    },
    {
      value: 'TopEnd',
      alignment: Alignment.TopEnd
    },
    {
      value: 'Start',
      alignment: Alignment.Start
    },
    {
      value: 'Center',
      alignment: Alignment.Center
    },
    {
      value: 'End',
      alignment: Alignment.End
    },
    {
      value: 'BottomStart',
      alignment: Alignment.BottomStart
    },
    {
      value: 'Bottom',
      alignment: Alignment.Bottom
    },
    {
      value: 'BottomEnd',
      alignment: Alignment.BottomEnd
    },
  ]
  @State currentAlignmentItem: AlignmentItem = {
    value: 'TopStart',
    alignment: Alignment.TopStart
  }

  aboutToAppear(): void {
    this.title = getTitleParams()
    console.log(`current : ${json.stringify(this.currentAlignmentItem)}`)
  }

  build() {
    Column() {
      TitleBar({ title: this.title })
      TemplateContent({
        content: () => {
          this.buildAlignContent()
        },
        title: '1. 交叉轴内容对齐alignContent',
        subtitle: `当前方向：`,
        items: this.alignmentItems.map(item => item.value),
        onPopupClick: (index: number) => {
          this.currentAlignmentItem = this.alignmentItems[index]
          console.log(`current : ${json.stringify(this.currentAlignmentItem)}`)
        }
      })
    }
    .height('100%')
    .width('100%')
  }

  @Builder
  buildAlignContent() {
    Stack({
      alignContent: this.currentAlignmentItem.alignment
    }) {
      Text()
        .width(100)
        .height(100)
        .backgroundColor(bgColor1)
      Text()
        .width(80)
        .height(50)
        .backgroundColor(bgColor2)
      Text()
        .width(50)
        .height(30)
        .backgroundColor(bgColor3)
    }
    .width('100%')
    .height(150)
    .backgroundColor(bgColor0)
  }
}

