# 
# 

EAPI=8


PYTHON_COMPAT=( python{3_11,3_12,3_13,3_14} )
DISTUTILS_USE_PEP517=wheel

inherit python-r1 gs-pypi

DESCRIPTION="ONNX Runtime is a runtime accelerator for Machine Learning models [wheel]"

HOMEPAGE="https://onnxruntime.ai"
LICENSE="MIT"

SRC_URI="https://github.com/microsoft/onnxruntime/releases/download/v${PV}/${P}.tgz"
RESTRICT="test"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="cuda cudnn"
DEPENDENCIES="dev-python/coloredlogs[${PYTHON_USEDEP}]
	dev-python/flatbuffers[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.21.6[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/protobuf[${PYTHON_USEDEP}]
	dev-python/sympy[${PYTHON_USEDEP}]
	cuda? ( dev-python/nvidia-cuda-nvrtc-cu12[${PYTHON_USEDEP}] )
	cuda? ( dev-python/nvidia-cuda-runtime-cu12[${PYTHON_USEDEP}] )
	cuda? ( dev-python/nvidia-cufft-cu12[${PYTHON_USEDEP}] )
	cuda? ( dev-python/nvidia-curand-cu12[${PYTHON_USEDEP}] )
	cudnn? ( dev-python/nvidia-cudnn-cu12[${PYTHON_USEDEP}] )
	virtual/allow-pypi-wheels"
BDEPEND="${DEPENDENCIES}"
RDEPEND="${DEPENDENCIES}"
