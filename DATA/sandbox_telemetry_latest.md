# sandbox_telemetry_parse — 2026-10-14 03:13:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=66814 lines=152
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 147 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 147} |
| `chromeGpuPssKb` | {'int': 147} |
| `chromeOtherPssKb` | {'int': 147} |
| `chromeProcesses` | {'int': 147} |
| `chromeProfiles` | {'int': 147} |
| `chromeRendererMaxPssKb` | {'int': 147} |
| `chromeRendererPssKb` | {'int': 147} |
| `chromeRenderers` | {'int': 147} |
| `chromeTabs` | {'int': 147} |
| `chromeTabsProbedProfiles` | {'int': 147} |
| `chromeUtilityPssKb` | {'int': 147} |
| `desktopPssKb` | {'int': 147} |
| `hostPssKb` | {'int': 147} |
| `kind` | {'str': 147} |
| `memAvailableKb` | {'int': 147} |
| `memTotalKb` | {'int': 147} |
| `otherPssKb` | {'int': 147} |
| `processes` | {'int': 147} |
| `pssFallbackProcesses` | {'int': 147} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
