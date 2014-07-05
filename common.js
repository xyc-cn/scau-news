// JavaScript Document

//网站的主域名
var serverURL = 'http://localhost/';

/*
写入loclstorage缓存
 * @param key
 * @param data
*/
function setItem(key,data){
	localStorage.setItem(key,data);
}
/*
读取localstorage缓存
  * @param key 
  * @returns
*/
function getItem(key){
	return localStorage.getItem(key);
}