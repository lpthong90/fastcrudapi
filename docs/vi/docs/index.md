# FastCRUDAPI

<p align="center">
    <!-- <a href="https://fastcrudapi.lpthong90.com"><img src="https://fastcrudapi.lpthong90.com/img/logo.png" alt="FastCRUDAPI"></a> -->
    <a href="https://fastcrudapi.lpthong90.com"><img src="./img/logo.png" alt="FastCRUDAPI"></a>
</p>
<p align="center">
    <em>Tạo CRUD api cho model cực kỳ đơn giản cho FastAPI.</em>
</p>
<p align="center">
    <a href="https://github.com/lpthong90/fastcrudapi/actions?query=workflow%3ATest" target="_blank">
        <img src="https://github.com/lpthong90/fastcrudapi/workflows/Test/badge.svg" alt="Test">
    </a>
    <a href="https://github.com/lpthong90/fastcrudapi/actions?query=workflow%3APublish" target="_blank">
        <img src="https://github.com/lpthong90/fastcrudapi/workflows/Publish/badge.svg" alt="Publish">
    </a>
    <a href="https://coverage-badge.samuelcolvin.workers.dev/redirect/lpthong90/fastcrudapi" target="_blank">
        <img src="https://coverage-badge.samuelcolvin.workers.dev/lpthong90/fastcrudapi.svg" alt="Coverage">
    <a href="https://pypi.org/project/fastcrudapi" target="_blank">
        <img src="https://img.shields.io/pypi/v/fastcrudapi?color=%2334D058&label=pypi%20package" alt="Package version">
    </a>
    <a href="https://pypi.org/project/fastcrudapi" target="_blank">
        <img alt="Downloads" src="https://img.shields.io/pypi/dm/fastcrudapi?color=%2334D058" />
    </a>
</p>
<p align="center">
    <img alt="PyPI - Python Version" src="https://img.shields.io/pypi/pyversions/fastcrudapi">
</p>


---

**Tài Liệu**: <a href="https://fastcrudapi.lpthong90.dev" target="_blank">https://fastcrudapi.lpthong90.dev</a>

**Mã nguồn**: <a href="https://github.com/lpthong90/fastcrudapi" target="_blank">https://github.com/lpthong90/fastcrudapi</a>

---

Thư viện giúp tạo nhóm CRUD api của model khi sử dụng FastAPI.  

## Cài Đặt
<div class="termy">

```console
$ pip install fastcrudapi
---> 100%
Successfully installed fastcrudapi
```

</div>

## Sử dụng

```Python
from fastapi import FastAPI
from fastcrudapi import CrudApiRouter
from pydantic import BaseModel

app = FastAPI()


class Book(BaseModel):
    id: int
    name: str


book_router = CrudApiRouter(
    prefix="/books",
    schema=Book,
)
app.include_router(book_router)
```

## OpenAPI

<p align="center">
    <img src="https://fastcrudapi.lpthong90.dev/img/openapi.png" alt="OpenAPI">
</p>

## Bản quyền

Dự án sử dụng bản quyền [MIT license](https://github.com/lpthong90/fastcrudapi/blob/main/LICENSE).
