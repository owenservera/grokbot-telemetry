# sandbox_telemetry_parse — 2026-10-15 23:12:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1101442 lines=2441
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2436 |
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
| `chromeBrowserPssKb` | {'int': 2436} |
| `chromeGpuPssKb` | {'int': 2436} |
| `chromeOtherPssKb` | {'int': 2436} |
| `chromeProcesses` | {'int': 2436} |
| `chromeProfiles` | {'int': 2436} |
| `chromeRendererMaxPssKb` | {'int': 2436} |
| `chromeRendererPssKb` | {'int': 2436} |
| `chromeRenderers` | {'int': 2436} |
| `chromeTabs` | {'int': 2436} |
| `chromeTabsProbedProfiles` | {'int': 2436} |
| `chromeUtilityPssKb` | {'int': 2436} |
| `desktopPssKb` | {'int': 2436} |
| `hostPssKb` | {'int': 2436} |
| `kind` | {'str': 2436} |
| `memAvailableKb` | {'int': 2436} |
| `memTotalKb` | {'int': 2436} |
| `otherPssKb` | {'int': 2436} |
| `processes` | {'int': 2436} |
| `pssFallbackProcesses` | {'int': 2436} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
