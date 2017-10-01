{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_one_to_ten (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/bin"
libdir     = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/lib/x86_64-osx-ghc-8.0.2/one-to-ten-0.1.0.0-GMW0cwlHCIMF7v8w30g4Rz"
dynlibdir  = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/lib/x86_64-osx-ghc-8.0.2"
datadir    = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/share/x86_64-osx-ghc-8.0.2/one-to-ten-0.1.0.0"
libexecdir = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/libexec"
sysconfdir = "/Users/ryandurling/practice/haskell/ninety-nine-problems/one-to-ten/.stack-work/install/x86_64-osx/lts-9.6/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "one_to_ten_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "one_to_ten_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "one_to_ten_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "one_to_ten_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "one_to_ten_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "one_to_ten_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
