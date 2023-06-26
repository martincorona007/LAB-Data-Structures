package org.example.linkedListCourse1;


public class SinglyLinkedList {
    public Node head;
    public Node tail;
    public int size;

    public Node createSinglyLinkedList(int nodeValue){
        head = new Node();
        Node node = new Node();
        node.next = null;
        node.value = nodeValue;
        head = node;
        tail = node;
        size = 1;
        return head;
    }
    public void insertLinkedList(int nodeValue,int location){
        Node node = new Node();
        node.value = nodeValue;
        if(head == null) {
            createSinglyLinkedList(nodeValue);
            return;
        }else if(location == 0){
            node.next = head;
            head = node;
        }else if(location >= size){
            node.next = null;
            tail.next =node;
            tail = node;
        }else{
            Node tmpNode = head;
            int index = 0;
            while (index < location -1){
                tmpNode = tmpNode.next;
                index++;
            }
            Node nextNode = tmpNode.next;
            nextNode.next =node;
            node.next = nextNode;
        }
        size++;
    }

    public void deleteSLL(){
        head = null;
        tail = null;
        System.out.println("SLL eliminated");
    }
    public void traverseList(){
        if(head == null){
            System.out.println("sll does not exist!");
        }else{
            Node temp = head;
            for (int i = 0; i < size ; i++) {
                System.out.print(temp.value);
                if(i != size - 1){
                    System.out.print(" -> ");
                }
                temp = temp.next;
            }
        }
    }
    public boolean searchNode(int nodeValue){
        if(head != null){
            Node tempNode = head;
            for (int i = 0; i < size; i++) {
                if (tempNode.value == nodeValue) {
                    System.out.print(" found location "+i+"\n");
                    return true;
                }
                tempNode = tempNode.next;
            }
        }
        System.out.println("Node not found!");
        return false;
    }
    public void deleteNode(int locationInList){
        if(head == null){
            System.out.println("the SLL does not exist");
            return;
        }else if(locationInList == 0){//at the beginning
            head = head.next;
            size--;
            if(size == 0){
                tail = null;
            }
        }else if(locationInList >= size){//at the end
            Node tempNode = head;
            for (int i = 0; i < size - 1; i++) {//the node before last node
                tempNode = tempNode.next;
            }
            if(tempNode == head){//one element in the list
                tail = head = null;
                size--;
                return;
            }
            tempNode.next = null;
            tail = tempNode;
            size--;
        }else{//at middle
            Node tempNode = head;

            for (int i = 0; i < locationInList - 1; i++) {
                tempNode = tempNode.next;
            }
            tempNode.next = tempNode.next.next;
            size--;
        }
    }
}
