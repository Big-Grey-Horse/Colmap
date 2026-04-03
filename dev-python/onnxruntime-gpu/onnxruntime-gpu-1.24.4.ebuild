# 
# 

EAPI=8

DIGEST_SOURCES="yes"
PYTHON_COMPAT=( python{3_11,3_12,3_13,3_14} )
DISTUTILS_USE_PEP517=wheel

inherit python-r1

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
	virtual/allow-pypi-wheels"
BDEPEND="${DEPENDENCIES}"
RDEPEND="${DEPENDENCIES}"
