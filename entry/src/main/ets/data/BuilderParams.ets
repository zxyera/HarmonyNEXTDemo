export class BaseParams {
  itemWidth: Length = 0
  itemHeight: Length = 0
  itemWidth2?: Length = 0
  itemHeight2?: Length = 0
  itemWidth3?: Length = 0
  itemHeight3?: Length = 0
  width?: Length
  height?: Length
  bgColor?: ResourceColor
}

@Observed
export class SizeParams extends BaseParams {
  space?: string | number
  flexAlign?: FlexAlign
  verticalAlign?: VerticalAlign
  horizontalAlign?: HorizontalAlign
  padding?: Padding | Length | LocalizedPadding
  reverse?: boolean
}

@Observed
export class FlexParams extends BaseParams {
  direction?: FlexDirection
  wrap?: FlexWrap
  justifyContent?: FlexAlign
  alignItems?: ItemAlign
  alignContent?: FlexAlign
  mainSpace?: number
  crossSpace?: number
}