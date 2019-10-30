#include <iostream>
#include <cstdlib>

int main(int argc, char** argv) {
    std::srand(0);

    const size_t N = 100000;
    double* A = new double[N];
    double* B = new double[N];
    double* C = new double[N];
    // Initialize random vectors
    for(size_t i = 0; i < N; ++i) {
        A[i] = ((double)std::rand())/((double)RAND_MAX);
        B[i] = ((double)std::rand())/((double)RAND_MAX);
    }

    // Sum and store
    for(size_t i = 0; i < N; ++i) {
        C[i] = A[i]+B[i];
    }

    // Produce summary statistic
    double av = 0;
    for(size_t i = 0; i < N; ++i) {
        av += C[i];
    }
    av /= (double)N;
    std::cout << "Average: " << av << std::endl;
}
