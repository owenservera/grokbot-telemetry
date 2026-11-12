# sandbox_telemetry_parse — 2026-11-12 12:06:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2121397 lines=4696
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4687 |
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
| `chromeBrowserPssKb` | {'int': 4687} |
| `chromeGpuPssKb` | {'int': 4687} |
| `chromeOtherPssKb` | {'int': 4687} |
| `chromeProcesses` | {'int': 4687} |
| `chromeProfiles` | {'int': 4687} |
| `chromeRendererMaxPssKb` | {'int': 4687} |
| `chromeRendererPssKb` | {'int': 4687} |
| `chromeRenderers` | {'int': 4687} |
| `chromeTabs` | {'int': 4687} |
| `chromeTabsProbedProfiles` | {'int': 4687} |
| `chromeUtilityPssKb` | {'int': 4687} |
| `desktopPssKb` | {'int': 4687} |
| `hostPssKb` | {'int': 4687} |
| `kind` | {'str': 4687} |
| `memAvailableKb` | {'int': 4687} |
| `memTotalKb` | {'int': 4687} |
| `otherPssKb` | {'int': 4687} |
| `processes` | {'int': 4687} |
| `pssFallbackProcesses` | {'int': 4687} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
