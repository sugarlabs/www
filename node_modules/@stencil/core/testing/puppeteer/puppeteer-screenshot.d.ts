import type { E2EProcessEnv, ScreenshotOptions } from '@stencil/core/internal';
import type * as puppeteer from 'puppeteer';
import type * as pd from './puppeteer-declarations';
export declare function initPageScreenshot(page: pd.E2EPageInternal): void;
export declare function pageCompareScreenshot(page: pd.E2EPageInternal, env: E2EProcessEnv, desc: string, testPath: string, opts: ScreenshotOptions): Promise<{
    id: string;
    desc: string;
    imageA: string;
    imageB: string;
    mismatchedPixels: number;
    device: string;
    userAgent: string;
    width: number;
    height: number;
    deviceScaleFactor: number;
    hasTouch: boolean;
    isLandscape: boolean;
    isMobile: boolean;
    allowableMismatchedPixels: number;
    allowableMismatchedRatio: number;
    testPath: string;
    cacheKey: string | undefined;
}>;
export declare function createPuppeteerScreenshotOptions(opts: ScreenshotOptions, { width, height }: {
    width: number;
    height: number;
}): puppeteer.ScreenshotOptions;
