# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="A general-purpose Structure-from-Motion and Multi-View Stereo pipeline."
HOMEPAGE="https://colmap.github.io/"
SRC_URI="https://github.com/colmap/colmap/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
    sci-libs/ceres-solver
    dev-libs/boost
    media-libs/freeimage
    sci-libs/metis
    sci-libs/cholmod
    sci-mathematics/cgal
    dev-cpp/eigen
    sci-libs/flann
    media-libs/freeimage
    dev-db/sqlite
    media-libs/glew
    dev-qt/qtbase
    dev-qt/qtopengl
    dev-python/onnxruntime-linux-x64-gpu
    sci-libs/poselib"

RDEPEND="${DEPEND}"

#CMAKE_IN_SOURCE_BUILD=1

MYCMAKEARGS="-DCMAKE_CUDA_ARCHITECTURES=120"

