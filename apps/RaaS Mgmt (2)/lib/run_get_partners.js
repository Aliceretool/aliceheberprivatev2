const perPage = 5000;
const partners = [];
const fetchPromises = [];

for (let i = 1; i <= 2; i++) {
  fetchPromises.push(
    get_partners.trigger({
      additionalScope: {
        perPage,
        currentPage: i,
      },
    })
  );
}

const result = await Promise.all(fetchPromises);
partners.push(...result.flat());
return partners;
