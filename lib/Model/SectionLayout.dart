enum SectionLayout { shelf, carousel, rows, banner }

SectionLayout trendingCarousel(String title) =>
    title == 'Trending Now' ? SectionLayout.carousel : SectionLayout.shelf;
