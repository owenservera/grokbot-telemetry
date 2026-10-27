# sandbox_telemetry_parse — 2026-10-27 08:55:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=426740 lines=947
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 942 |
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
| `chromeBrowserPssKb` | {'int': 942} |
| `chromeGpuPssKb` | {'int': 942} |
| `chromeOtherPssKb` | {'int': 942} |
| `chromeProcesses` | {'int': 942} |
| `chromeProfiles` | {'int': 942} |
| `chromeRendererMaxPssKb` | {'int': 942} |
| `chromeRendererPssKb` | {'int': 942} |
| `chromeRenderers` | {'int': 942} |
| `chromeTabs` | {'int': 942} |
| `chromeTabsProbedProfiles` | {'int': 942} |
| `chromeUtilityPssKb` | {'int': 942} |
| `desktopPssKb` | {'int': 942} |
| `hostPssKb` | {'int': 942} |
| `kind` | {'str': 942} |
| `memAvailableKb` | {'int': 942} |
| `memTotalKb` | {'int': 942} |
| `otherPssKb` | {'int': 942} |
| `processes` | {'int': 942} |
| `pssFallbackProcesses` | {'int': 942} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
