
function countStaffSignIns() {
  const todaySignIns = site_today.data.filter(item => item.group_id === 885);
  const signedInCount = todaySignIns.filter(item => item.status === 'signed_in').length;
  const signedOutCount = todaySignIns.filter(item => item.status === 'signed_out').length;
  
  return { signedInCount, signedOutCount };
}

return countStaffSignIns();


