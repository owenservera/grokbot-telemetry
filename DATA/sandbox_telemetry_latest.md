# sandbox_telemetry_parse — 2026-10-15 18:27:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=992962 lines=2201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2196 |
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
| `chromeBrowserPssKb` | {'int': 2196} |
| `chromeGpuPssKb` | {'int': 2196} |
| `chromeOtherPssKb` | {'int': 2196} |
| `chromeProcesses` | {'int': 2196} |
| `chromeProfiles` | {'int': 2196} |
| `chromeRendererMaxPssKb` | {'int': 2196} |
| `chromeRendererPssKb` | {'int': 2196} |
| `chromeRenderers` | {'int': 2196} |
| `chromeTabs` | {'int': 2196} |
| `chromeTabsProbedProfiles` | {'int': 2196} |
| `chromeUtilityPssKb` | {'int': 2196} |
| `desktopPssKb` | {'int': 2196} |
| `hostPssKb` | {'int': 2196} |
| `kind` | {'str': 2196} |
| `memAvailableKb` | {'int': 2196} |
| `memTotalKb` | {'int': 2196} |
| `otherPssKb` | {'int': 2196} |
| `processes` | {'int': 2196} |
| `pssFallbackProcesses` | {'int': 2196} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
