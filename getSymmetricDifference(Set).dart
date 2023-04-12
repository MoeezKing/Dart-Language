main()
{
  var sehri=<String>{'Water','Halwa','Chicken'};
  var aftari=<String>{'Water','Dates','Samosa'};
  print('Sehri : $sehri');
  print('Aftari: $aftari');
  var s=getSymmetricDifference(sehri, aftari);
  print('Symmetric-Differences : $s');
}
Set<String> getSymmetricDifference(Set<String> set1, Set<String> set2) {
    Set<String> s1=set1.difference(set2);
    Set<String> s2=set2.difference(set1);

    return s1.union(s2);
}
