module GlobalConfigHandler where

import Servant
import Dto

globalConfigHandler :: Handler ApiGlobalConfig
globalConfigHandler = return ApiGlobalConfig { version = 12, lastModifiedBy = "hello" }
