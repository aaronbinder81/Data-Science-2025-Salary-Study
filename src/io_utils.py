"""Reusable IO helpers for loading/saving datasets."""

from __future__ import annotations
import pandas as pd
from pathlib import Path

def read_csv(path: str | Path, **kwargs) -> pd.DataFrame:
    """Read a CSV with sensible defaults."""
    return pd.read_csv(path, low_memory=False, **kwargs)

def write_csv(df: pd.DataFrame, path: str | Path, **kwargs) -> None:
    """Write a CSV, creating parent directories if needed."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    df.to_csv(path, index=False, **kwargs)
