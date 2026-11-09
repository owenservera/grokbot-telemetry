# sandbox_telemetry_parse — 2026-11-09 16:05:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=732630 lines=1627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1618 |
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
| `chromeBrowserPssKb` | {'int': 1618} |
| `chromeGpuPssKb` | {'int': 1618} |
| `chromeOtherPssKb` | {'int': 1618} |
| `chromeProcesses` | {'int': 1618} |
| `chromeProfiles` | {'int': 1618} |
| `chromeRendererMaxPssKb` | {'int': 1618} |
| `chromeRendererPssKb` | {'int': 1618} |
| `chromeRenderers` | {'int': 1618} |
| `chromeTabs` | {'int': 1618} |
| `chromeTabsProbedProfiles` | {'int': 1618} |
| `chromeUtilityPssKb` | {'int': 1618} |
| `desktopPssKb` | {'int': 1618} |
| `hostPssKb` | {'int': 1618} |
| `kind` | {'str': 1618} |
| `memAvailableKb` | {'int': 1618} |
| `memTotalKb` | {'int': 1618} |
| `otherPssKb` | {'int': 1618} |
| `processes` | {'int': 1618} |
| `pssFallbackProcesses` | {'int': 1618} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
