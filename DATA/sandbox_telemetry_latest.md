# sandbox_telemetry_parse — 2026-10-06 16:12:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=469418 lines=1034
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1029 |
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
| `chromeBrowserPssKb` | {'int': 1029} |
| `chromeGpuPssKb` | {'int': 1029} |
| `chromeOtherPssKb` | {'int': 1029} |
| `chromeProcesses` | {'int': 1029} |
| `chromeProfiles` | {'int': 1029} |
| `chromeRendererMaxPssKb` | {'int': 1029} |
| `chromeRendererPssKb` | {'int': 1029} |
| `chromeRenderers` | {'int': 1029} |
| `chromeTabs` | {'int': 1029} |
| `chromeTabsProbedProfiles` | {'int': 1029} |
| `chromeUtilityPssKb` | {'int': 1029} |
| `desktopPssKb` | {'int': 1029} |
| `hostPssKb` | {'int': 1029} |
| `kind` | {'str': 1029} |
| `memAvailableKb` | {'int': 1029} |
| `memTotalKb` | {'int': 1029} |
| `otherPssKb` | {'int': 1029} |
| `processes` | {'int': 1029} |
| `pssFallbackProcesses` | {'int': 1029} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
