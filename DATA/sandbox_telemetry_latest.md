# sandbox_telemetry_parse — 2026-11-12 13:40:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2153536 lines=4767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4758 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 4758} |
| `chromeGpuPssKb` | {'int': 4758} |
| `chromeOtherPssKb` | {'int': 4758} |
| `chromeProcesses` | {'int': 4758} |
| `chromeProfiles` | {'int': 4758} |
| `chromeRendererMaxPssKb` | {'int': 4758} |
| `chromeRendererPssKb` | {'int': 4758} |
| `chromeRenderers` | {'int': 4758} |
| `chromeTabs` | {'int': 4758} |
| `chromeTabsProbedProfiles` | {'int': 4758} |
| `chromeUtilityPssKb` | {'int': 4758} |
| `desktopPssKb` | {'int': 4758} |
| `hostPssKb` | {'int': 4758} |
| `kind` | {'str': 4758} |
| `memAvailableKb` | {'int': 4758} |
| `memTotalKb` | {'int': 4758} |
| `otherPssKb` | {'int': 4758} |
| `processes` | {'int': 4758} |
| `pssFallbackProcesses` | {'int': 4758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
