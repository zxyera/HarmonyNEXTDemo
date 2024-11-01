import { getTitleParams, TitleBar } from '../../components/TitleBar';
import { bgColor0, bgColor1, bgColor2, bgColor3 } from '../../data/Colors';
import { TemplateContent } from '../Templates';
import json from '@ohos.util.json';
import { AlignmentItem } from '../../data/Beans';
import { alignments } from '../../data/Arrays';

@Entry
@Component
struct UI_Stack {
  @State title: string = '';
  @State currentAlignmentItem: AlignmentItem = alignments[0]

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
        items: alignments.map(item => item.value),
        onPopupClick: (index: number) => {
          this.currentAlignmentItem = alignments[index]
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

