{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Dto
 (
  IntVersion(..),
  ApiGlobalConfig (..)
 ) where

import GHC.Generics (Generic)
import Data.Aeson

newtype IntVersion = IntVersion Int deriving (Show, Generic, ToJSON)

data ApiGlobalConfig = ApiGlobalConfig
  { version :: IntVersion
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
