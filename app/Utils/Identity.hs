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

newtype MonadState m s a = MonadState {
  runState :: s -> m (a,s)
}

instance Monad m => Functor (MonadState m s) where
  fmap f mx = mx >>= (return . f)

instance Monad m => Applicative (MonadState m s) where
  pure  = return
  (<*>) = liftM2 ($)

instance Monad m => Monad (MonadState m s) where
  return x = MonadState $ return . (x,)
  MonadState f >>= g = MonadState $ f >=> unwrap
    where unwrap (x,s) = runState (g x) s

get :: Monad m => MonadState m s s
get = MonadState $ \s -> return (s,s)

put :: Monad m => s -> MonadState m s ()
put s = get >>= \_ -> return ((),s)

