# sandbox_telemetry_parse — 2026-11-26 00:27:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2994397 lines=6633
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6618 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6618} |
| `chromeGpuPssKb` | {'int': 6618} |
| `chromeOtherPssKb` | {'int': 6618} |
| `chromeProcesses` | {'int': 6618} |
| `chromeProfiles` | {'int': 6618} |
| `chromeRendererMaxPssKb` | {'int': 6618} |
| `chromeRendererPssKb` | {'int': 6618} |
| `chromeRenderers` | {'int': 6618} |
| `chromeTabs` | {'int': 6618} |
| `chromeTabsProbedProfiles` | {'int': 6618} |
| `chromeUtilityPssKb` | {'int': 6618} |
| `desktopPssKb` | {'int': 6618} |
| `hostPssKb` | {'int': 6618} |
| `kind` | {'str': 6618} |
| `memAvailableKb` | {'int': 6618} |
| `memTotalKb` | {'int': 6618} |
| `otherPssKb` | {'int': 6618} |
| `processes` | {'int': 6618} |
| `pssFallbackProcesses` | {'int': 6618} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
