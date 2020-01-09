module Theme.Types
  ( Color(..)
  ) where

data Color = Red
           | Blue
           | Green
           | Yellow
           | Orange
           | Purple
           | Cyan
           | White
           | Black
           deriving (Show, Read, Eq)
