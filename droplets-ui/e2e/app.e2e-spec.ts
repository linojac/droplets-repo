import { DropletsUiPage } from './app.po';

describe('droplets-ui App', () => {
  let page: DropletsUiPage;

  beforeEach(() => {
    page = new DropletsUiPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
