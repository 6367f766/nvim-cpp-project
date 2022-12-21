

python -m pip install --upgrade pip
pip install conan

conan profile new default --detect

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

cp ./ci/conan-clang-profile ~/.conan/profiles/clang
source ~/.profile

make
