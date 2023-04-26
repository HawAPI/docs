---
icon: home
---

# Introduction

The **HawAPI** is a Free and <a href="https://github.com/HawAPI/" target="_blank">Open Source</a> API for <a href="https://www.netflix.com/title/80057281" target="_blank">Stranger Things</a> show.

All this information is available through a RESTful API implemented with _Java (Spring Boot) + PostgreSQL_.

## API Request Format

All API requests are HTTP requests. For all requests with a body, the body may be in **JSON** format. The proper `Content-Type` for **JSON** is `application/json`.

## Base URL

The HTTP API allows read access to all public data through the public endpoints and read/write access to your private account via the private endpoints.

- HTTPS API: https://hawapi.project.id/api/v1
