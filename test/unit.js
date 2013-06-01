var expect = require('chai'),
    robin = require('../src/robin')

describe('literal', function() {
    it('matches _', function() {

        var toMatch = 34,
            result = 'asdf'

        expect(robin.match(toMatch).with(

            [2, function() { return 'bar' }]
            , [toMatch, function() { return result }]
            , [565, function() { return 'odp' }]

        )).to.equal(result)

    })
})