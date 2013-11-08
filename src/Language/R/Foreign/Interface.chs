-- |
-- Copyright: (C) 2013 Amgen, Inc.
--
{-# LANGUAGE CPP, ForeignFunctionInterface #-}

#define CSTACK_DEFNS
#include <Rinterface.h>
module Language.R.Foreign.Interface
  ( -- * stack limit functions
    rCStackLimit
  , rCStackStart
  ) where

import Foreign
import Foreign.C

-- | Stack limit for R
foreign import ccall "&R_CStackLimit" rCStackLimit :: Ptr {# type uintptr_t #}
-- | Start of the Stack for R
foreign import ccall "&R_CStackStart" rCStackStart :: Ptr {# type uintptr_t #}

