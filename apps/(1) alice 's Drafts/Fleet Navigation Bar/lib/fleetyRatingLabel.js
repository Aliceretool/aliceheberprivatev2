if ({{fleetyRating.value == 0}}) {
  return { value: null, label: ""}
} else if ({{ fleetyRating.value > 3}}) {
  return { value: "great", label: "Great!"}
} else if({{ fleetyRating.value < 2.5 }}) {
  return { value: "horrible", label: "Horrible!"}
} else {
  return { value: "so-so", label: "So so" }
}