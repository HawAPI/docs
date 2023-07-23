---
icon: home
---

# Introduction

The **HawAPI** is a Free and <a href="{{git_home}}/" target="_blank">Open Source :icon-link-external:</a> API for <a href="https://www.netflix.com/title/80057281" target="_blank">Stranger Things :icon-link-external:</a> show.

All this information is available through a RESTful API implemented with [_Java (Spring Boot) + PostgreSQL_](/About.md#tech-stack) and served via **JSON** and allows developers to create **desktop**, **web** and **mobile** applications using this data very easy.

## Quickstart

:::tiles
<a href="./guides/i18n" class="title-box">I18N<span class="subtitle">Internationalization Support</span></a>

<a href="./guides/filters" class="title-box">Filters<span class="subtitle">Endpoint Filters</span></a>

<a href="./guides/rate-limiting" class="title-box">Rate Limiting<span class="subtitle">API Limits & Tiers</span></a>

<a href="./guides/authentication" class="title-box">Authentication<span class="subtitle">API Authentication</span></a>

<a href="./guides/caching" class="title-box">Caching<span class="subtitle">Cache & Validation</span></a>

<a href="./guides/cors" class="title-box">CORS<span class="subtitle">Cross-Origin Request</span></a>

<a href="./javadoc/apidocs/" class="title-box">Javadoc<span class="subtitle">Generated Docs</span></a>

<a href="./faq" class="title-box">FAQ<span class="subtitle">Common questions</span></a>
:::

## About

:::tiles
<a href="./about#fair-use-policy" class="title-box">Maintainers<span class="subtitle">Project Maintainers</span></a>

<a href="./about#fair-use-policy" class="title-box">Fair Use Policy<span class="subtitle">Controlling usage</span></a>

<a href="./about#copyright" class="title-box">Copyright<span class="subtitle">Data and images are used</span></a>

<a href="./about#licenses" class="title-box">Licenses<span class="subtitle">All licenses of the project</span></a>
:::

<style>
    .tiles {
        width: 100%;
        text-align: center;
        color: #1956AF;
        display: grid;
        grid-template-columns: repeat(4, 0.2fr);
        justify-content: start;
    }

    .tiles p .title-box {
        height: 7rem;
        width: 12rem;
        border: 1px solid #fff;
        margin: 0 1rem;
        border-radius: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        transition: 250ms;
        color: #fff !important;
        text-decoration: none !important;
    }

    .tiles p .title-box .subtitle {
        font-size: 0.725em;
    }

    .tiles p:hover .title-box {
        border: 1px solid rgb(179 0 0/var(--tw-text-opacity));
        color: rgb(179 0 0/var(--tw-text-opacity)) !important;
    }

    @media (max-width: 1500px) {
        .tiles {
            grid-template-columns: repeat(3, 0.2fr);
        }
    }

    @media (max-width: 1300px) {
        .tiles {
            grid-template-columns: repeat(2, 0.2fr);
        }
    }

    @media (max-width: 480px) {
        .tiles {
            justify-content: space-evenly;
        }

        .tiles p .title-box {
            height: 6rem;
            width: 11rem;
            margin: 0 0.5rem;
        }
    }

    @media (max-width: 400px) {
        .tiles p .title-box {
            height: 6rem;
            width: 9rem;
        }
    }
</style>
