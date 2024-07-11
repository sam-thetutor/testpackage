
# How to publish a package with MOPS

## Github

- create new github project and give it a name

## Clone the repo

cd in the repo open  in the vscode

## install mops

npm i -g ic-mops

## Initializing project

mops init and select the prompts

## write code

```
import Nat "mo:base/Nat";
module {

	public func add(x : Nat, y : Nat) : Nat {
		return x + y;
	};

	public func sub(x : Nat, y : Nat) : Nat {
		return x - y;
	};

	public func mul(x : Nat, y : Nat) : Nat {
		return x * y;
	};
	
	public func div(x : Nat, y : Nat) : Nat {
		return x / y;
	};
};

```

tests
```
import {add} "../src";
import Debug "mo:base/Debug";

assert add(1, 2) == 3;
Debug.print("minor chnage");
assert add(3, 22) == 25;

```

You can also do a class inside the module

```
import Nat "mo:base/Nat";

module {
  public class Code() {
      public func add(a : Nat, b : Nat) : Nat {
      return a +b;
    };
  };
};

```

tests
```
import Code "../src/main";


let code = Code.Code();

assert code.add(1, 2) == 3;

```


## add base dependency

```
[dependencies]
base = "0.11.2"
```
## add to github


add toolchain

```
[toolchain]
moc = "0.10.3"
wasmtime = "16.0.0"
```


## import identity
mops import-identity -- "$(dfx identity export <identity_name>)"

## publish

## install it and use it


## change version
mops bump
