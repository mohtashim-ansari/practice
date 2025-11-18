function deleteAction() {

    // confirm box
    let answer = confirm("Are you sure you want to delete?");

    if (answer === true) {
        alert("Item Deleted!");
    } else {
        alert("Delete Cancelled!");
    }
}
