
// Implement a method twoSum which finds two numbers in an array that sum up to a given target.

method twoSum(nums: array<int>, target: int) returns (i: int, j: int)
  requires nums.Length > 1
  requires exists i,j :: 0 <= i < j < nums.Length && nums[i] + nums[j] == target
  ensures 0 <= i < j < nums.Length && nums[i] + nums[j] == target
  ensures forall ii, jj :: (0 <= ii < i && ii < jj < nums.Length) ==> nums[ii] + nums[jj] != target
  ensures forall jj :: i < jj < j ==> nums[i] + nums[jj] != target
{
  var n := nums.Length;
  i := 0;
  j := 1;
  while i < n - 1
  {
    j := i + 1;
    while j < n
    {
      if nums[i] + nums[j] == target {
        return;
      }
      j := j + 1;
    }
    i := i + 1;
  }
}