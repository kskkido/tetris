{-# LANGUAGE TupleSections #-}

module Utils.State
  ( State (..)
  , get
  , put
  ) where

import Utils.Identity
  ( Identity
  )
import Control.Monad
  ( liftM2
  , (>=>)
  )

newtype State s a = State
  { runState :: s -> (a,s)
  }

instance Functor (State s) where
  fmap = (<$>)

instance Applicative (State s) where
  pure  = return
  (<*>) = liftM2 ($)

instance Monad (State s) where
  return x = State $ (x,)
  State f >>= g = State $ unwrap . f
    where unwrap (x,s) = runState (g x) s

get :: State s s
get = State $ \s -> (s,s)

put :: s -> State s ()
put s = State $ \_ -> ((),s)