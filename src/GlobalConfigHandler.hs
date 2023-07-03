module GlobalConfigHandler( 
    globalConfigHandler
  ) where

import Servant
import Dto

globalConfigHandler :: Handler ApiGlobalConfig
globalConfigHandler = return ApiGlobalConfig { version = IntVersion(12), lastModifiedBy = "hello" }
