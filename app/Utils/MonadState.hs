{-# LANGUAGE TupleSections #-}

module Utils.MonadState
  ( MonadState(..)
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

newtype MonadState m s a = MonadState
  { runMonadState :: s -> m (a,s)
  }

instance Monad m => Functor (MonadState m s) where
  fmap = (<$>)

instance Monad m => Applicative (MonadState m s) where
  pure  = return
  (<*>) = liftM2 ($)

instance Monad m => Monad (MonadState m s) where
  return x = MonadState (return . (x,))
  MonadState f >>= g = MonadState $ f >=> unwrap
    where unwrap (x,s) = runMonadState (g x) s
