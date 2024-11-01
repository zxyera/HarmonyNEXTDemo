export interface Base {
  value: string
}

export interface AlignmentItem extends Base {
  alignment: Alignment
}

export interface FlexAlignItem extends Base {
  flexAlign: FlexAlign
}

export interface VerticalAlignItem extends Base {
  verticalAlign: VerticalAlign
}

export interface HorizontalAlignItem extends Base {
  horizontalAlign: HorizontalAlign
}

export interface FlexDirectionItem extends Base {
  direction: FlexDirection
}

export interface ItemAlignItem extends Base {
  itemAlign: ItemAlign
}

export interface FlexWrapItem extends Base {
  flexWrap?: FlexWrap
}
