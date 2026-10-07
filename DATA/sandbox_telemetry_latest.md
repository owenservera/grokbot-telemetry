# sandbox_telemetry_parse — 2026-10-07 02:19:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=744974 lines=1638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1633 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1633} |
| `chromeGpuPssKb` | {'int': 1633} |
| `chromeOtherPssKb` | {'int': 1633} |
| `chromeProcesses` | {'int': 1633} |
| `chromeProfiles` | {'int': 1633} |
| `chromeRendererMaxPssKb` | {'int': 1633} |
| `chromeRendererPssKb` | {'int': 1633} |
| `chromeRenderers` | {'int': 1633} |
| `chromeTabs` | {'int': 1633} |
| `chromeTabsProbedProfiles` | {'int': 1633} |
| `chromeUtilityPssKb` | {'int': 1633} |
| `desktopPssKb` | {'int': 1633} |
| `hostPssKb` | {'int': 1633} |
| `kind` | {'str': 1633} |
| `memAvailableKb` | {'int': 1633} |
| `memTotalKb` | {'int': 1633} |
| `otherPssKb` | {'int': 1633} |
| `processes` | {'int': 1633} |
| `pssFallbackProcesses` | {'int': 1633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
