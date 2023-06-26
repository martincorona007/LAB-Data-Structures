package org.example.linkedListCourse1;

public class testMain {
    public static void main(String[] args) {
        SinglyLinkedList sll = new SinglyLinkedList();
        sll.createSinglyLinkedList(5);
        sll.insertLinkedList(6,1);
        sll.insertLinkedList(7,3);
        sll.insertLinkedList(8,4);

        sll.traverseList();
        System.out.println(sll.searchNode(8));
        sll.deleteNode(3);
        sll.deleteSLL();
        sll.traverseList();
    }
}
