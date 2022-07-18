    for (i in 1:refp_fnrow) {
      int j = 0;
      for (k in 1:dmax) {
        j += is_nan(abs(pmfs[k, i])) ? 1 : 0;
        j += is_inf(abs(pmfs[k, i])) ? 1 : 0;
      }
      j += phi <= 1e-3 ? 1 : 0;
      if (j) {
        print("Issue with pmf");
        print(i);
        print("Truncation  distribution estimate");
        print(pmfs[, i]);
        print("Logmean and Logsd intercept");
        print(refp_mean_int);
        if (model_refp > 1) {
          print(refp_sd_int);
        }
        print("Logmean and Logsd for pmf");
        print(refp_mean[i]);
        if (model_refp > 1) {
          print(refp_sd[i]);
        }
        print("Unique report day hazards");
        print(srdlh);
        print("Overdispersion");
        print(sqrt_phi);
      }
    }
    int j = 0;
    for (k in 1:rep_fnrow) {
      j += is_nan(abs(srdlh[k])) ? 1 : 0;
      j += is_inf(abs(srdlh[k])) ? 1 : 0;
    }
    if (j) {
      print("Hazard effects on report date");
      print(srdlh);
    }
