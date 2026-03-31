// 1. Define your metrics and their specific phrases
// Replace the '.value' parts with your actual component values (e.g., statistic1.secondaryValue)
const metrics = [
  {
    name: "EOL",
    // Parse the string "-10.5%" or "+5.2%" into a real number
    val: parseFloat({{cohort_eol_vsavg4.value}} || "0"), 
    phrases: [
      "Your students are rocking EOL!",
      "Keep on rocking EOL!",
      "Evidence of Learning is your superpower today!"
    ]
  },
  {
    name: "LSAT",
    val: parseFloat({{cohort_lsat_vsavg4.value}} || "0"),
    phrases: [
      "Learners are loving your sessions!",
      "Your satisfaction scores are through the roof!",
      "Great work keeping learners happy!"
    ]
  },
  {
    name: "Attendance",
    val: parseFloat({{cohort_att_vsavg4.value}} || "0"),
    phrases: [
      "Full house! Your attendance rates are great.",
      "Your learners are really showing up for you!",
      "Outstanding attendance consistency!"
    ]
  },
  {
    name: "Progress Reviews",
    val: parseFloat({{cohort_pr_vsavg4.value}} || "0"),
    phrases: [
      "You're a progress review machine!",
      "Right on track with those reviews!",
      "Timely reviews are your specialty!"
    ]
  },
  {
    name: "Gateway",
    val: parseFloat({{cohort_gw_vsavg4.value}} || "0"),
    phrases: [
      "Your pipeline to Gateway is looking strong!",
      "Excellent work getting learners to Gateway!",
      "Gateway bookings are flying high!"
    ]
  }
];

// 2. Filter for positive values only
const positiveMetrics = metrics.filter(m => m.val > 0);

// 3. Fallback if everything is negative or zero
if (positiveMetrics.length === 0) {
  return "Ready to make an impact?"}

// 4. Sort by highest value (descending) to find the "Best" metric

positiveMetrics.sort((a, b) => b.val - a.val);
const topMetric = positiveMetrics[0];

// 5. Pick a random phrase from that metric's list
const randomPhrase = topMetric.phrases[Math.floor(Math.random() * topMetric.phrases.length)];

// 6. Return the final string
return `${randomPhrase}`;