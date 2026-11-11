# sandbox_telemetry_parse — 2026-11-11 12:46:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1637646 lines=3627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3618 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3618} |
| `chromeGpuPssKb` | {'int': 3618} |
| `chromeOtherPssKb` | {'int': 3618} |
| `chromeProcesses` | {'int': 3618} |
| `chromeProfiles` | {'int': 3618} |
| `chromeRendererMaxPssKb` | {'int': 3618} |
| `chromeRendererPssKb` | {'int': 3618} |
| `chromeRenderers` | {'int': 3618} |
| `chromeTabs` | {'int': 3618} |
| `chromeTabsProbedProfiles` | {'int': 3618} |
| `chromeUtilityPssKb` | {'int': 3618} |
| `desktopPssKb` | {'int': 3618} |
| `hostPssKb` | {'int': 3618} |
| `kind` | {'str': 3618} |
| `memAvailableKb` | {'int': 3618} |
| `memTotalKb` | {'int': 3618} |
| `otherPssKb` | {'int': 3618} |
| `processes` | {'int': 3618} |
| `pssFallbackProcesses` | {'int': 3618} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
