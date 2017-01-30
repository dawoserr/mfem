# Copyright (c) 2010, Lawrence Livermore National Security, LLC. Produced at the
# Lawrence Livermore National Laboratory. LLNL-CODE-443211. All Rights reserved.
# See file COPYRIGHT for details.
#
# This file is part of the MFEM library. For more information and source code
# availability see http://mfem.org.
#
# MFEM is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License (as published by the Free
# Software Foundation) version 2.1 dated February 1999.

# Defines the following variables:
#   - ATK_FOUND
#   - ATK_LIBRARIES
#   - ATK_INCLUDE_DIRS

include(MfemCmakeUtilities)
# Note: components are enabled based on the find_package() parameters.
mfem_find_package(ATK ATK ATK_DIR "include" "" "lib" ""
  "Paths to headers required by ATK." "Libraries required by ATK."
  ADD_COMPONENT Sidre "include" sidre/sidre.hpp "lib" sidre
  ADD_COMPONENT SPIO "include" spio/IOManager.hpp "lib" spio
  ADD_COMPONENT SLIC "include" slic/slic.hpp "lib" slic
  ADD_COMPONENT common "include" common/ATKMacros.hpp "lib" common)
