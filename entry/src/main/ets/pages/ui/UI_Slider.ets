import { getTitleParams, TitleBar } from '../../components/TitleBar';

@Entry
@Component
struct UI_Slider {
  @State title: string = '';

  aboutToAppear(): void {
    this.title = getTitleParams()
  }

  build() {
    Column() {
      TitleBar({ title: this.title })
    }
    .height('100%')
    .width('100%')
  }
}