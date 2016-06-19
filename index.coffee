module.exports = (options) ->
  { totalitems, itemsperpage, currentpage } = options
  totalpages = Math.ceil totalitems / itemsperpage
  currentpage = Math.max currentpage, 1
  currentpage = Math.min currentpage, totalpages
  pagestartindex = (currentpage - 1) * itemsperpage
  pageendindex = -1 + Math.min currentpage * itemsperpage, totalitems

  totalitems: totalitems
  totalpages: totalpages
  itemsperpage: itemsperpage
  currentpage: currentpage
  hasnextpage: currentpage < totalpages
  hasprevpage: currentpage > 1
  pagestartindex: pagestartindex
  pageendindex: pageendindex
  itemsonpage: pageendindex - pagestartindex + 1
