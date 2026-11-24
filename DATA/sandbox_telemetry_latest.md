# sandbox_telemetry_parse — 2026-11-24 21:49:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2464405 lines=5461
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5446 |
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
| `chromeBrowserPssKb` | {'int': 5446} |
| `chromeGpuPssKb` | {'int': 5446} |
| `chromeOtherPssKb` | {'int': 5446} |
| `chromeProcesses` | {'int': 5446} |
| `chromeProfiles` | {'int': 5446} |
| `chromeRendererMaxPssKb` | {'int': 5446} |
| `chromeRendererPssKb` | {'int': 5446} |
| `chromeRenderers` | {'int': 5446} |
| `chromeTabs` | {'int': 5446} |
| `chromeTabsProbedProfiles` | {'int': 5446} |
| `chromeUtilityPssKb` | {'int': 5446} |
| `desktopPssKb` | {'int': 5446} |
| `hostPssKb` | {'int': 5446} |
| `kind` | {'str': 5446} |
| `memAvailableKb` | {'int': 5446} |
| `memTotalKb` | {'int': 5446} |
| `otherPssKb` | {'int': 5446} |
| `processes` | {'int': 5446} |
| `pssFallbackProcesses` | {'int': 5446} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
