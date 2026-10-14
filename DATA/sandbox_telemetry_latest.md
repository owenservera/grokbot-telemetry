# sandbox_telemetry_parse — 2026-10-14 20:06:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=463670 lines=1030
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1025 |
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
| `chromeBrowserPssKb` | {'int': 1025} |
| `chromeGpuPssKb` | {'int': 1025} |
| `chromeOtherPssKb` | {'int': 1025} |
| `chromeProcesses` | {'int': 1025} |
| `chromeProfiles` | {'int': 1025} |
| `chromeRendererMaxPssKb` | {'int': 1025} |
| `chromeRendererPssKb` | {'int': 1025} |
| `chromeRenderers` | {'int': 1025} |
| `chromeTabs` | {'int': 1025} |
| `chromeTabsProbedProfiles` | {'int': 1025} |
| `chromeUtilityPssKb` | {'int': 1025} |
| `desktopPssKb` | {'int': 1025} |
| `hostPssKb` | {'int': 1025} |
| `kind` | {'str': 1025} |
| `memAvailableKb` | {'int': 1025} |
| `memTotalKb` | {'int': 1025} |
| `otherPssKb` | {'int': 1025} |
| `processes` | {'int': 1025} |
| `pssFallbackProcesses` | {'int': 1025} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
