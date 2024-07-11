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
