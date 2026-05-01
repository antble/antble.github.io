---
layout: post-programming
title: Python Notes
category: programming
date: 2025-05-01
tag: [python, notes]
last_modified_at: 2026-05-01
---
Here are some advance topics on python programming that one should know. 



1. functional enhancements | decorators and closures
- decorators are higher-order functions that allow you to modify the behaiour of a function without changing its source code 
  - useful in logging, timing simulations, enforcing constraints

    ```python
    import functools
    import time

    def timer(func):
        """A decorator to measure the execution time of a simulation step."""
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            start_time = time.perf_counter()
            result = func(*args, **kwargs)
            end_time = time.perf_counter()
            print(f"Function {func.__name__} took {end_time - start_time:.4f}s")
            return result
        return wrapper

    @timer
    def compute_forces(atoms):
        # Simulated heavy computation
        time.sleep(0.5)
        return "Force Vector"
    ```


2. Context managers
- guarantee setup and teardown code runs, even if an exception is raised
- the `with` statement is the syntax — it calls `__enter__` on entry and `__exit__` on exit
- **class-based**: implement `__enter__` and `__exit__` directly

       ```python
       class SimulationTimer:
           def __enter__(self):
               self.start = time.perf_counter()
               return self  # bound to the `as` variable

           def __exit__(self, exc_type, exc_val, exc_tb):
               elapsed = time.perf_counter() - self.start
               print(f"Simulation took {elapsed:.4f}s")
               return False  # False = do not suppress exceptions

       with SimulationTimer() as t:
           run_md_simulation()
       ```

   - **function-based shorthand**: `@contextlib.contextmanager` — `yield` splits setup from teardown

       ```python
       from contextlib import contextmanager

       @contextmanager
       def open_trajectory(path):
           f = open(path, 'r')
           try:
               yield f          # everything after `with` runs here
           finally:
               f.close()        # always runs, even on exception

       with open_trajectory("traj.xyz") as f:
           frames = parse(f)
       ```

   - **why `finally` matters**: if you use `try/except` instead, a bare `except` that re-raises still skips cleanup. `finally` is unconditional.
   - **multiple context managers** on one line:

       ```python
       with open("input.xyz") as src, open("output.xyz", "w") as dst:
           dst.write(convert(src.read()))
       ```

   - common built-in uses: `open()`, `threading.Lock()`, `numpy.errstate()`, `unittest.mock.patch()`

1. Iterators and Generators (memory efficiency) 
   - use of `yield` to turn a function into a generator 

    ```python
    def stream_trajectory(file_path):
    """Generator to read a massive trajectory file line-by-line."""
    with open(file_path, 'r') as f:
        for line in f:
            if line.startswith("ATOM"):
                yield parse_line(line) # Returns an object only when requested

    ```
2. metaprogramming and Dunder ("double under") methods
    ```python
    __call__
    __getitem__ 
    ```
3. performance python: bridging to c++/fortran 
    - `ctypes` and `cffi` : calling c functions directly 
    - `pybind11` : modern standard for creating python bindings for c++ 
    - `numba` : JIT compiler that convert python functions into machine code

4. memmory management 
   - `__slots__`
   - `numpy` memory layout `C_CONTIGUOUS` and `F_CONTIGUOUS` 
   - `memoryview` for zero-copy slicing 
5. profiling and optimization
   - `cProfile` : cpu time profiler (built-int)
   - `line_profile` : line-by-line timing 
   - `memory_profiler` : memory usage per line 
   - `tracemalloc` : built-in memory tracing 
   - `Scalene` : CPU + GPU + memory in one 
     - modern all-in-one profiler, distinguishes python time vs native time 
   - workflow:
    ```python
    timeit (is it slow?) 
    → cProfile (which function?)
        → line_profiler (which line?)
        → memory_profiler / tracemalloc (is it memory, not CPU?)
            → Scalene / py-spy (production or long-running jobs)
    ```

6. Concurrency and parallelism
   - `multiprocessing` vs `asyncio` 

7. Testing patterns 
   - `pytest` fixtures, parametrize

8. Packaging and environments: 
   - `pyproject.toml` 
   - `src/` layout
   - editable installs, building a wheel