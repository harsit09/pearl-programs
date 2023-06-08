function Node(value) {
	this.value = value;
	this.next = null;
}

let head = null;

// Adding node to the linked List
function addnode(value) {
	let node = new Node(value);
	if (head === null) {
		head = node;
	} else {
		let current = head;
		while (current.next) {
			current = current.next;
		}
		current.next = node;
	}
}

// To print the linked List
function traverse() {
	let current = head;
	while (current) {
		process.stdout.write(current.value + " ");
		current = current.next;
	}
}

// To insert node at the beginning
function insertatbegin(value) {
	let node = new Node(value);
	node.next = head;
	head = node;
}

// To insert at the end
function insertatend(value) {
	let node = new Node(value);
	if (head === null) {
		head = node;
	} else {
		let current = head;
		while (current.next) {
			current = current.next;
		}
		current.next = node;
	}
}

// To insert Node with value 44 after 3rd Node
function insertatpos(value, position) {
	let node = new Node(value);
	if (head === null) {
		head = node;
	} else {
		let current = head;
		let count = 1;
		while (count < position && current.next) {
			current = current.next;
			count++;
		}
		node.next = current.next;
		current.next = node;
	}
}

// To delete node at the beginning
function delatbegin() {
	if (head !== null) {
		head = head.next;
	}
}

// To delete at the end
function delatend() {
	if (head === null) {
		return;
	}
	if (head.next === null) {
		head = null;
		return;
	}
	let current = head;
	while (current.next.next) {
		current = current.next;
	}
	current.next = null;
}

// To delete Node at position 5
function delatpos(position) {
	if (head === null) {
		return;
	}
	let current = head;
	if (position === 1) {
		head = current.next;
		return;
	}
	let count = 1;
	let prev = null;
	while (count < position && current.next) {
		prev = current;
		current = current.next;
		count++;
	}
	if (current === null) {
		return;
	}
	prev.next = current.next;
}

// Adding node to the linked List
addnode(2);
addnode(4);
addnode(9);
addnode(1);
addnode(21);
addnode(22);

// To print the linked List
process.stdout.write("Linked List: ");
traverse();
process.stdout.write("\n");

// To insert node at the beginning
insertatbegin(1);
process.stdout.write("Linked List after inserting 1 at beginning: ");
traverse();
process.stdout.write("\n");

// To insert at the end
insertatend(0);
process.stdout.write("Linked List after inserting 0 at end: ");
traverse();
process.stdout.write("\n");

// To insert Node with value 44 after 3rd Node
insertatpos(44, 3);
process.stdout.write("Linked List after inserting 44 after 3rd Node: ");
traverse();
process.stdout.write("\n");

// To delete node at the beginning
delatbegin();
process.stdout.write("Linked List after deleting node at beginning: ");
traverse();
process.stdout.write("\n");

// To delete at the end
delatend();
process.stdout.write("Linked List after deleting node at end: ");
traverse();
process.stdout.write("\n");

// To delete Node at position 5
delatpos(5);
process.stdout.write("Linked List after deleting node at position 5: ");
traverse();
process.stdout.write("\n");
