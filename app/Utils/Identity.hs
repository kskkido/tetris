module Utils.Identity
  ( Identity(..)
  ) where

import Control.Monad
  ( liftM2
  )

newtype Identity a = Identity
  { runIdentity :: a
  }

instance Functor Identity where
  fmap = (<$>)

instance Applicative Identity where
  pure  = return
  (<*>) = liftM2 ($)

instance Monad Identity where
  return = Identity
  Identity x >>= f = f x
