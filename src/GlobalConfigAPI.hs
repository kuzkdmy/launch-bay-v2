{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module GlobalConfigAPI where

import Servant
import Dto

type GlobalConfigAPI
  = "api" :> "v1.0" :> "global_config" :>
  Get '[JSON] ApiGlobalConfig
