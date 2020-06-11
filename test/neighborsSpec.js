var assert, neighbors;

({neighbors} = require('../neighbors'));

assert = require('assert');

describe('neighbors', function() {
  it('returns 0 for empty row array', function() {
    return assert.equal(neighbors([0, 0, 0], 0, 0), 0);
  });
  return it('returns 1 for [0, 1, 0] position 0', function() {
    return assert.equal(neighbors([0, 1, 0], 0, 0), 1);
  });
});

//describe 'Array', () ->
//  describe '#indexOf()', () ->
//    it 'should return -1 when the value is not present', () ->
//      assert.equal [1, 2, 3].indexOf(4), -1

//# sourceMappingURL=neighborsSpec.js.map
