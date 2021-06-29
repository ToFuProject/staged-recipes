if [ "$(uname)" == "Darwin" ]; then
    cmake  ${CMAKE_ARGS} -DCMAKE-INSTALL-PREFIX=${PREFIX} .      
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    export CXXFLAGS="$CXXFLAGS -std=c++14"
    cmake  ${CMAKE_ARGS} -DCMAKE-INSTALL-PREFIX=${PREFIX} .    
fi
cmake --build . --config release
cmake --install . --config release
