const data = {{ JSON.parse(HospitalSearch_Module.hospital) }}
let hospital = null;

if(data) {
  hospital = data;
} else if({{  Object.keys(locationInputTransformer?.value?.mna_hospital) }}) {
  hospital = {{  locationInputTransformer.value.mna_hospital }}
}

return hospital;