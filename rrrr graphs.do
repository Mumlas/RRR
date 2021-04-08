
graph bar, over(sex) blabel(total, format(%9.0fc)) ytitle(% of Individuals) title(NSR by Gender) note(Source: NSR 31st Dec. 2020)
graph bar, over(b5, label(angle(forty_five))) blabel(total, format(%3.0f)) ytitle(% of Individuals) ylabel(, angle(forty_five)) title(Distribution of NSR by Vocations) note(Source: NSR 31st Dec. 2020)
graph pie, over(disability) plabel(_all percent, color(white) size(small) orientation(vertical) format(%4.1f)) title(NSR by Disability Status) note(Source: NSR 31st Dec. 2020)

capture: drop agecat
recode agey (0/5=1 "0 - 5")(6/15=2 "6 - 15")(16/35=3 "16 - 35")(36/65=4 "36 - 65")(66/max=5 "Above 65"),gen(agecat)
graph pie, over(agecat) plabel(_all percent, color(white) size(small) orientation(vertical) format(%4.1f)) title(RRR Beneficiaries by Age Distribution) note(Source: RRR 19th Jan. 2021)

graph bar if relation==1, over(educationalqualification) blabel(bar) title(Beneficiaries of RRR by Level of Education) note(Source: RRR 19th Jan. 2021)

graph bar if relationship ==1, over(decile, label(angle(forty_five))) blabel(total, format(%3.1f)) ytitle(% of Households) ylabel(, angle(forty_five)) title(Distribution of RRR Beneficaries  by PMT Score(Decile)) note(Source: RRR 19th Jan. 2021)

graph bar (count) decile, over(state) stack title(NSR by PMT (Deciles) by States) note(Source: NSR 31st Dec. 2020)






