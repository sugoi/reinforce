{-# LANGUAGE ConstraintKinds,
             DataKinds,
             KindSignatures,
             TypeFamilies #-}

import GHC.Prim

class Encoder m where
  type EncoderCxt m a :: Constraint
  encode :: EncoderCxt m a => m a -> String

data Shower a = Shower a

data Rationalizer a = Rationalizer a

instance Encoder Shower where
  type EncoderCxt Shower a = Show a
  encode (Shower x) = show x

instance Encoder Rationalizer where
  type EncoderCxt Rationalizer a = Real a
  encode (Rationalizer x) = show $ toRational x


main = do
  putStrLn $ encode $ Shower 2.3
  putStrLn $ encode $ Rationalizer 2.3