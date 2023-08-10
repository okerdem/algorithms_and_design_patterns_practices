void main() {
  Tree tree = Tree();

  tree.insert(3);
  tree.insert(5);
  tree.insert(2);
  tree.insert(7);
  tree.insert(8);

  tree.printNodes();
}

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class Tree {
  Node? root;

  void insert(int data) {
    if (root == null) {
      root = Node(data);
    } else {
      _insert(root!, data);
    }
  }

  void _insert(Node node, int data) {
    if (data < node.data) {
      if (node.left == null) {
        node.left = Node(data);
      } else {
        _insert(node.left!, data);
      }
    } else {
      if (node.right == null) {
        node.right = Node(data);
      } else {
        _insert(node.right!, data);
      }
    }
  }

  void printNodes() {
    _printNodes(root!);
  }

  void _printNodes(Node? node) {
    if (node == null) {
      return;
    }

    _printNodes(node.left);
    print(node.data);
    _printNodes(node.right);
  }
}
