module.exports = ({ totalitems, itemsperpage, currentpage }) => {
  const totalpages = Math.ceil(totalitems / itemsperpage)
  const currentpage = Math.max(currentpage, 1)
  const currentpage = Math.min(currentpage, totalpages)
  const pagestartindex = (currentpage - 1) * itemsperpage
  const pageendindex = Math.min(currentpage * itemsperpage, totalitems)
  return {
    totalitems,
    totalpages,
    itemsperpage,
    currentpage,
    hasnextpage: currentpage < totalpages,
    hasprevpage: currentpage > 1,
    pagestartindex,
    pageendindex,
    itemsonpage: pageendindex - pagestartindex
  }
}
