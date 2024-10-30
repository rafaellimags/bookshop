using my.bookshop as my from '../db/schema';

/* 
 * As anotações adicionam restrições às entidades que são projeções das entidades do meu schema
 * Caso não sejam fornecidas anotações, a entidade será totalmente acessível para operações de CRUD
 */

service CatalogService {
    entity Books @readonly    as projection on my.Books;
    entity Authors @readonly  as projection on my.Authors;
    entity Orders @insertonly as projection on my.Orders;
}
