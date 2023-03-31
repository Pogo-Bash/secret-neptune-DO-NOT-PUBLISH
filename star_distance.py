num_stars = 1000000  # number of stars in the Milky Way
avg_dist_between_stars = 4  # average distance between neighboring stars in light-years
avg_dist_between_suns = (num_stars-1) * avg_dist_between_stars / num_stars  # calculate average distance between stars
avg_dist_between_suns_parsecs = avg_dist_between_suns / 3.26  # convert to parsecs

print(f"The average distance between stars is {avg_dist_between_suns_parsecs:.2f} parsecs.")
