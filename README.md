# pagepro

Pagination calculations

```js
console.log(pagepro({
  totalitems: 320,
  itemsperpage: 25,
  currentpage: 2
}));

// output
{
  totalitems: 320,
  totalpages: 13,
  itemsperpage: 25,
  currentpage: 2,
  hasnextpage: true,
  hasprevpage: true,
  pagestartindex: 25,
  pageendindex: 49,
  itemsonpage: 25
}

```
