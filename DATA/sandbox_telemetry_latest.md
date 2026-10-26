# sandbox_telemetry_parse — 2026-10-26 23:53:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=211479 lines=471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 466 |
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
| `chromeBrowserPssKb` | {'int': 466} |
| `chromeGpuPssKb` | {'int': 466} |
| `chromeOtherPssKb` | {'int': 466} |
| `chromeProcesses` | {'int': 466} |
| `chromeProfiles` | {'int': 466} |
| `chromeRendererMaxPssKb` | {'int': 466} |
| `chromeRendererPssKb` | {'int': 466} |
| `chromeRenderers` | {'int': 466} |
| `chromeTabs` | {'int': 466} |
| `chromeTabsProbedProfiles` | {'int': 466} |
| `chromeUtilityPssKb` | {'int': 466} |
| `desktopPssKb` | {'int': 466} |
| `hostPssKb` | {'int': 466} |
| `kind` | {'str': 466} |
| `memAvailableKb` | {'int': 466} |
| `memTotalKb` | {'int': 466} |
| `otherPssKb` | {'int': 466} |
| `processes` | {'int': 466} |
| `pssFallbackProcesses` | {'int': 466} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
