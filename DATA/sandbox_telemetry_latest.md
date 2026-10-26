# sandbox_telemetry_parse — 2026-10-26 22:36:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=179316 lines=400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 395 |
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
| `chromeBrowserPssKb` | {'int': 395} |
| `chromeGpuPssKb` | {'int': 395} |
| `chromeOtherPssKb` | {'int': 395} |
| `chromeProcesses` | {'int': 395} |
| `chromeProfiles` | {'int': 395} |
| `chromeRendererMaxPssKb` | {'int': 395} |
| `chromeRendererPssKb` | {'int': 395} |
| `chromeRenderers` | {'int': 395} |
| `chromeTabs` | {'int': 395} |
| `chromeTabsProbedProfiles` | {'int': 395} |
| `chromeUtilityPssKb` | {'int': 395} |
| `desktopPssKb` | {'int': 395} |
| `hostPssKb` | {'int': 395} |
| `kind` | {'str': 395} |
| `memAvailableKb` | {'int': 395} |
| `memTotalKb` | {'int': 395} |
| `otherPssKb` | {'int': 395} |
| `processes` | {'int': 395} |
| `pssFallbackProcesses` | {'int': 395} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
