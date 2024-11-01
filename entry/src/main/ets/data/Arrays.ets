import {
  AlignmentItem,
  FlexAlignItem,
  FlexDirectionItem,
  FlexWrapItem,
  HorizontalAlignItem,
  ItemAlignItem,
  VerticalAlignItem
} from "./Beans"

export const flexAligns: FlexAlignItem[] = [
  {
    value: 'Start',
    flexAlign: FlexAlign.Start
  },
  {
    value: 'Center',
    flexAlign: FlexAlign.Center
  },
  {
    value: 'End',
    flexAlign: FlexAlign.End
  },
  {
    value: 'SpaceBetween',
    flexAlign: FlexAlign.SpaceBetween
  },
  {
    value: 'SpaceAround',
    flexAlign: FlexAlign.SpaceAround
  },
  {
    value: 'SpaceEvenly',
    flexAlign: FlexAlign.SpaceEvenly
  },
]

export const verticalAligns: VerticalAlignItem[] = [
  {
    value: 'Top',
    verticalAlign: VerticalAlign.Top
  },
  {
    value: 'Center',
    verticalAlign: VerticalAlign.Center
  },
  {
    value: 'Bottom',
    verticalAlign: VerticalAlign.Bottom
  },
]

export const horizontalAligns: HorizontalAlignItem[] = [
  {
    value: 'Top',
    horizontalAlign: HorizontalAlign.Start
  },
  {
    value: 'Center',
    horizontalAlign: HorizontalAlign.Center
  },
  {
    value: 'Bottom',
    horizontalAlign: HorizontalAlign.End
  },
]

export const flexDirections: FlexDirectionItem[] = [
  {
    direction: FlexDirection.Row,
    value: 'Row'
  },
  {
    direction: FlexDirection.Column,
    value: 'Column'
  },
  {
    direction: FlexDirection.RowReverse,
    value: 'RowReverse'
  },
  {
    direction: FlexDirection.ColumnReverse,
    value: 'ColumnReverse'
  }
]

export const itemAligns: ItemAlignItem[] = [
  {
    value: 'Auto',
    itemAlign: ItemAlign.Auto
  },
  {
    value: 'Start',
    itemAlign: ItemAlign.Start
  },
  {
    value: 'Center',
    itemAlign: ItemAlign.Center
  },
  {
    value: 'End',
    itemAlign: ItemAlign.End
  },
  {
    value: 'Baseline',
    itemAlign: ItemAlign.Baseline
  },
  {
    value: 'Stretch',
    itemAlign: ItemAlign.Stretch
  },
]

export const flexWraps: FlexWrapItem[] = [
  {
    value: 'NoWrap',
    flexWrap: FlexWrap.NoWrap
  },
  {
    value: 'Wrap',
    flexWrap: FlexWrap.Wrap
  },
  {
    value: 'WrapReverse',
    flexWrap: FlexWrap.WrapReverse
  },
]

export const alignments: AlignmentItem[] = [
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