# fastcrudapi

---

<!-- **Documentation**: -->

**Source  Code**: <a href="https://github.com/lpthong90/fastcrudapi" target="_blank">https://github.com/lpthong90/fastcrudapi</a>

---

The package helps to build CRUD APIs for models based on FastAPI.

## Installation
<div class="termy">

```console
$ pip install fastcrudapi
---> 100%
Successfully installed fastcrudapi fastapi sqlmodel
```

</div>

## Basic Usage

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