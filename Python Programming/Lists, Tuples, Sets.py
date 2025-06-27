l = ["Bob", "Tom", "Anne"]
t = ("Bob", "Tom", "Anne")
s = {"Bob", "Tom", "Anne"}

s.add("Tim")
s.add("Tim")
print(s)

l.append("Kisha")
print(l)

l.remove("Kisha")
print(l)

art = {"Bob", "Tom", "Anne"}
science = {"Bob", "Tom", "Jen"}

both = art.union(science)
print(both)

both = art.intersection(science)
print(both)

both = art.difference(science)
print(both)