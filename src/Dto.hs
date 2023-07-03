{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}

module Dto
 (ApiGlobalConfig (..)) where

import GHC.Generics (Generic)
import Data.Aeson

data ApiGlobalConfig = ApiGlobalConfig
  { version :: Int
  , lastModifiedBy :: String
  } deriving (Show,Generic)
instance ToJSON ApiGlobalConfig

--data ApiEnvVarValue
--  = ApiStringEnvVar String
--  | ApiBooleanEnvVar Bool
--  | ApiIntEnvVar Int
--  deriving Show
--
--data EnvVarKey = EnvVarKey String
--data IntVersion = IntVersion Int
--
--
--data ApiEnvVarOverride =
--  ApiStringEnvVarOverride
--  { dev   :: Maybe ApiStringEnvVar
--  , stage :: Maybe ApiStringEnvVar
--  , prod  :: Maybe ApiStringEnvVar
--  }
--  | ApiBooleanEnvVarOverride
--  { dev :: Maybe ApiBooleanEnvVar
--  , stage :: Maybe ApiBooleanEnvVar
--  , prod :: Maybe ApiBooleanEnvVar
--  }
--  | ApiIntEnvVarOverride
--  { dev :: Maybe ApiIntEnvVar
--  , stage :: Maybe ApiIntEnvVar
--  , prod :: Maybe ApiIntEnvVar
--  }
