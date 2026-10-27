# sandbox_telemetry_parse — 2026-10-27 09:49:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=449341 lines=997
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 992 |
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
| `chromeBrowserPssKb` | {'int': 992} |
| `chromeGpuPssKb` | {'int': 992} |
| `chromeOtherPssKb` | {'int': 992} |
| `chromeProcesses` | {'int': 992} |
| `chromeProfiles` | {'int': 992} |
| `chromeRendererMaxPssKb` | {'int': 992} |
| `chromeRendererPssKb` | {'int': 992} |
| `chromeRenderers` | {'int': 992} |
| `chromeTabs` | {'int': 992} |
| `chromeTabsProbedProfiles` | {'int': 992} |
| `chromeUtilityPssKb` | {'int': 992} |
| `desktopPssKb` | {'int': 992} |
| `hostPssKb` | {'int': 992} |
| `kind` | {'str': 992} |
| `memAvailableKb` | {'int': 992} |
| `memTotalKb` | {'int': 992} |
| `otherPssKb` | {'int': 992} |
| `processes` | {'int': 992} |
| `pssFallbackProcesses` | {'int': 992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
