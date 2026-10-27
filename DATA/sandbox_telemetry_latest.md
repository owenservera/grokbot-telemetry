# sandbox_telemetry_parse — 2026-10-27 03:51:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=305152 lines=678
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 673 |
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
| `chromeBrowserPssKb` | {'int': 673} |
| `chromeGpuPssKb` | {'int': 673} |
| `chromeOtherPssKb` | {'int': 673} |
| `chromeProcesses` | {'int': 673} |
| `chromeProfiles` | {'int': 673} |
| `chromeRendererMaxPssKb` | {'int': 673} |
| `chromeRendererPssKb` | {'int': 673} |
| `chromeRenderers` | {'int': 673} |
| `chromeTabs` | {'int': 673} |
| `chromeTabsProbedProfiles` | {'int': 673} |
| `chromeUtilityPssKb` | {'int': 673} |
| `desktopPssKb` | {'int': 673} |
| `hostPssKb` | {'int': 673} |
| `kind` | {'str': 673} |
| `memAvailableKb` | {'int': 673} |
| `memTotalKb` | {'int': 673} |
| `otherPssKb` | {'int': 673} |
| `processes` | {'int': 673} |
| `pssFallbackProcesses` | {'int': 673} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
