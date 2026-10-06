# sandbox_telemetry_parse — 2026-10-07 00:30:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=695161 lines=1529
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1524 |
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
| `chromeBrowserPssKb` | {'int': 1524} |
| `chromeGpuPssKb` | {'int': 1524} |
| `chromeOtherPssKb` | {'int': 1524} |
| `chromeProcesses` | {'int': 1524} |
| `chromeProfiles` | {'int': 1524} |
| `chromeRendererMaxPssKb` | {'int': 1524} |
| `chromeRendererPssKb` | {'int': 1524} |
| `chromeRenderers` | {'int': 1524} |
| `chromeTabs` | {'int': 1524} |
| `chromeTabsProbedProfiles` | {'int': 1524} |
| `chromeUtilityPssKb` | {'int': 1524} |
| `desktopPssKb` | {'int': 1524} |
| `hostPssKb` | {'int': 1524} |
| `kind` | {'str': 1524} |
| `memAvailableKb` | {'int': 1524} |
| `memTotalKb` | {'int': 1524} |
| `otherPssKb` | {'int': 1524} |
| `processes` | {'int': 1524} |
| `pssFallbackProcesses` | {'int': 1524} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
