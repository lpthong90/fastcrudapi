# fastcrudapi

---

<!-- **Documentation**: -->

**Source  Code**: <a href="https://github.com/lpthong90/fastcrudapi" target="_blank">https://github.com/lpthong90/fastcrudapi</a>

---

The package helps to build CRUD APIs for models based on FastAPI.

## Installation
```bash
pip install fastcrudapi
```

## Basic Usage
```python
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