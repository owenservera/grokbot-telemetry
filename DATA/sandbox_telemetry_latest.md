# sandbox_telemetry_parse — 2026-10-14 19:14:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=442878 lines=984
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 979 |
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
| `chromeBrowserPssKb` | {'int': 979} |
| `chromeGpuPssKb` | {'int': 979} |
| `chromeOtherPssKb` | {'int': 979} |
| `chromeProcesses` | {'int': 979} |
| `chromeProfiles` | {'int': 979} |
| `chromeRendererMaxPssKb` | {'int': 979} |
| `chromeRendererPssKb` | {'int': 979} |
| `chromeRenderers` | {'int': 979} |
| `chromeTabs` | {'int': 979} |
| `chromeTabsProbedProfiles` | {'int': 979} |
| `chromeUtilityPssKb` | {'int': 979} |
| `desktopPssKb` | {'int': 979} |
| `hostPssKb` | {'int': 979} |
| `kind` | {'str': 979} |
| `memAvailableKb` | {'int': 979} |
| `memTotalKb` | {'int': 979} |
| `otherPssKb` | {'int': 979} |
| `processes` | {'int': 979} |
| `pssFallbackProcesses` | {'int': 979} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
