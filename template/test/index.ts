/// <reference path="../typings/main.d.ts"/>

import * as assert from 'power-assert';

import {Awesome} from '../src/index';

describe('Awesome', () => {
  it('should be awesome', () => {
    const awesome = new Awesome(true);
    assert.strictEqual(awesome.isAwesome(), true);
  });
});