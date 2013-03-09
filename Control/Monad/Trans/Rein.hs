module Control.Monad.Trans.Rein where


import qualified Control.Monad.State as State
import qualified Control.Monad.State.Class as State
import           Data.Typeable
import qualified Data.Binary as Bin
import qualified Data.ByteString.Lazy.Char8 as BS

data Context
  = ContextString  BS.ByteString
  | ContextTypeRep TypeRep
  | ContextRepeat  Int Context

data ReinState = ReinState

type ReinT m a = State.StateT ReinState m a