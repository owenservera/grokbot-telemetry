# sandbox_telemetry_parse — 2026-10-14 09:28:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=211454 lines=472
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 467 |
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
| `chromeBrowserPssKb` | {'int': 467} |
| `chromeGpuPssKb` | {'int': 467} |
| `chromeOtherPssKb` | {'int': 467} |
| `chromeProcesses` | {'int': 467} |
| `chromeProfiles` | {'int': 467} |
| `chromeRendererMaxPssKb` | {'int': 467} |
| `chromeRendererPssKb` | {'int': 467} |
| `chromeRenderers` | {'int': 467} |
| `chromeTabs` | {'int': 467} |
| `chromeTabsProbedProfiles` | {'int': 467} |
| `chromeUtilityPssKb` | {'int': 467} |
| `desktopPssKb` | {'int': 467} |
| `hostPssKb` | {'int': 467} |
| `kind` | {'str': 467} |
| `memAvailableKb` | {'int': 467} |
| `memTotalKb` | {'int': 467} |
| `otherPssKb` | {'int': 467} |
| `processes` | {'int': 467} |
| `pssFallbackProcesses` | {'int': 467} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
