import {
  Router_UI_Button,
  Router_UI_CheckBox,
  Router_UI_CommonAttrs,
  Router_UI_CommonEvents,
  Router_UI_DatePicker,
  Router_UI_Divider,
  Router_UI_Flex,
  Router_UI_GridRowGridCol,
  Router_UI_Image,
  Router_UI_Marquee,
  Router_UI_Menu,
  Router_UI_Progress,
  Router_UI_QRCode,
  Router_UI_Rating,
  Router_UI_RelativeContainer,
  Router_UI_RowColumn,
  Router_UI_Search,
  Router_UI_Select,
  Router_UI_Slider,
  Router_UI_Stack,
  Router_UI_Stepper,
  Router_UI_Text,
  Router_UI_TextClock,
  Router_UI_TextInput_Area,
  Router_UI_TextPicker,
  Router_UI_TextTimer,
  Router_UI_TimePicker,
  Router_UI_Toggle
} from "./Routers"

export const HomeData: HomeDataItem[] = [
  {
    group: '通用',
    items: [
      { name: '组件通用属性', route: Router_UI_CommonAttrs },
      { name: '组件通用事件', route: Router_UI_CommonEvents },
    ]
  },
  {
    group: '基础组件',
    items: [
      { name: '文本组件Text', route: Router_UI_Text },
      { name: '跑马灯Marquee', route: Router_UI_Marquee },
      { name: '按钮组件Button', route: Router_UI_Button },
      { name: '图片组件Image', route: Router_UI_Image },
      { name: '输入框TextInput/TextArea', route: Router_UI_TextInput_Area },
      { name: '复选框CheckBox', route: Router_UI_CheckBox },
      { name: '搜索框Search', route: Router_UI_Search },
      { name: '进度条Progress', route: Router_UI_Progress },
      { name: '下拉菜单Select', route: Router_UI_Select },
      { name: '菜单Menu', route: Router_UI_Menu },
      { name: '开关Toggle', route: Router_UI_Toggle },
      { name: '拖动条Slider', route: Router_UI_Slider },
      { name: '分割线Divider', route: Router_UI_Divider },
      { name: '评分组件Rating', route: Router_UI_Rating },
      { name: '二维码QRCode', route: Router_UI_QRCode },
      { name: '引导页导航Stepper', route: Router_UI_Stepper },
      { name: '文本时钟TextClock', route: Router_UI_TextClock },
      { name: '文本计时器TextTimer', route: Router_UI_TextTimer },
    ]
  },
  {
    group: '容器组件',
    items: [
      { name: '线性布局Row/Column', route: Router_UI_RowColumn },
      { name: '弹性布局Flex', route: Router_UI_Flex },
      { name: '层叠布局Stack', route: Router_UI_Stack },
      { name: '栅格布局GridRow/GridCol', route: Router_UI_GridRowGridCol },
      { name: '相对布局RelativeContainer', route: Router_UI_RelativeContainer },
    ]
  },
  {
    group: '选择器',
    items: [
      { name: '文本选择器TextPicker', route: Router_UI_TextPicker },
      { name: '时间选择器TimePicker', route: Router_UI_TimePicker },
      { name: '日期选择器DatePicker', route: Router_UI_DatePicker }
    ]
  }
]

export class HomeDataItem {
  group: string = ''
  items: HomeDataChildItem[] = []
}

export class HomeDataChildItem {
  name: string = ''
  route: string = ''
}