module Main where

import Servant
import Network.Wai.Handler.Warp (run)
import GlobalConfigAPI
import GlobalConfigHandler

type API = GlobalConfigAPI

api :: Proxy API
api = Proxy

server :: Server API
server = globalConfigHandler

app :: Application
app = serve api server

main :: IO ()
main = do
  putStrLn "Starting server on port 3000..."
  run 3000 app
