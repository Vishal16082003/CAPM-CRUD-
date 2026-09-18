using { db.books as myBooks } from '../db/booksdatamodel';

    service LibrarysSrv {
    
        entity bookSet as projection on myBooks.Books;
    
    }
