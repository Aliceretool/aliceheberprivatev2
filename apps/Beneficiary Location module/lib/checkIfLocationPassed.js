if(locationInputTransformer?.value?.mna_hospital) {
  isHospitalInfoTriggered.setValue(true);
  HospitalInfo_Container.setCurrentView('mna');
} else if(locationInputTransformer?.value?.manual_hospital?.hospital_name){
  isHospitalInfoTriggered.setValue(true);
  HospitalInfo_Container.setCurrentView('manual');
}