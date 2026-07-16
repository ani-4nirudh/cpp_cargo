# cpp_cargo

`cpp_cargo` is a small Bash-based C++ project scaffolding tool inspired by
Rust's `cargo new`. It creates a minimal CMake project so you can start
writing C++ immediately.

## Generated project

Running:

```bash
cpp_cargo hello_world
```

creates this structure in the current directory:

```text
hello_world/
├── CMakeLists.txt
├── Makefile
└── src/
    └── main.cpp
```

The generated Makefile supports:

```bash
make build    # Configure and compile the project
make run      # Build and run the executable
make clean    # Remove compiler-generated artifacts
```

## Requirements

- Bash
- CMake 3.20 or later
- A C++ compiler, such as GCC or Clang
- Make or Ninja

## Usage

Move to the directory where you want a new project:

```bash
cd ~/coding/cpp
```

Create a project:

```bash
cpp_cargo my_project
```

Then build it:

```bash
cd my_project
make build
make run
```

## Installation

Clone the repository wherever you would like to keep it:

```bash
git clone <repository-url> ~/coding/cpp_scaffolding
```
> **Note:** The script expects the repository at `~/coding/cpp_scaffolding`.
> If you clone it elsewhere, update `TEMPLATE_DIR` in `cpp_cargo.sh`.

Make the script executable:

```bash
chmod +x ~/coding/cpp_scaffolding/cpp_cargo
```

Create a personal executable directory and add a symbolic link:

```bash
mkdir -p ~/bin
ln -s ~/coding/cpp_scaffolding/cpp_cargo ~/bin/cpp_cargo
```

Ensure `~/bin` is in your `PATH`. Add the following to `~/.bashrc`:

```bash
export PATH="$HOME/bin:$PATH"
```

Reload your shell configuration:

```bash
source ~/.bashrc
```

Verify the installation:

```bash
command -v cpp_cargo
```

Expected output:

```text
/home/<your-user>/bin/cpp_cargo

```
## Safety

The tool refuses to create a project if the target path already exists. It never uses `rm -rf` and does not overwrite an existing project directory.

## Customizing the template

Edit the contents of the repository's `files/` directory:

```text
files/
├── CMakeLists.txt
├── Makefile
└── src/
    └── main.cpp
```

Every new project receives a copy of those files. You can add `.gitignore`,
`include/`, `tests/`, or any other boilerplate files to this template.
