module Types where

import Codec.Picture (PixelRGBA8, Image)

type BlockId = [Int]
type Point = (Int, Int)
type RGBA = PixelRGBA8
type Img = Image PixelRGBA8

data Orientation = X | Y
  deriving (Show, Eq, Ord)

type ISL = [ISLLine]

data ISLLine
  = LineCut BlockId Orientation Int
  | PointCut BlockId Point
  | Color BlockId RGBA
  | Swap BlockId BlockId
  | Merge BlockId BlockId
  deriving (Show, Eq, Ord)