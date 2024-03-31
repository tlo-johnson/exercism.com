func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diam = diameter,
    diam >= 0,
    let numSlices = slices,
    numSlices > 0 else { return nil }

  let radius = diam / 2
  let pi = 3.1417
  return pi * radius * radius / Double(numSlices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  guard areaA != areaB else { return "Neither slice is bigger" }
  guard let areaA = areaA else { return "Slice B is bigger" }
  guard let areaB = areaB else { return "Slice A is bigger" }
  return areaA > areaB ? "Slice A is bigger" : "Slice B is bigger"
}
