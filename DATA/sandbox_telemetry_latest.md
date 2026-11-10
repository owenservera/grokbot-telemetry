# sandbox_telemetry_parse — 2026-11-10 12:12:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1129457 lines=2504
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2495 |
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
| `chromeBrowserPssKb` | {'int': 2495} |
| `chromeGpuPssKb` | {'int': 2495} |
| `chromeOtherPssKb` | {'int': 2495} |
| `chromeProcesses` | {'int': 2495} |
| `chromeProfiles` | {'int': 2495} |
| `chromeRendererMaxPssKb` | {'int': 2495} |
| `chromeRendererPssKb` | {'int': 2495} |
| `chromeRenderers` | {'int': 2495} |
| `chromeTabs` | {'int': 2495} |
| `chromeTabsProbedProfiles` | {'int': 2495} |
| `chromeUtilityPssKb` | {'int': 2495} |
| `desktopPssKb` | {'int': 2495} |
| `hostPssKb` | {'int': 2495} |
| `kind` | {'str': 2495} |
| `memAvailableKb` | {'int': 2495} |
| `memTotalKb` | {'int': 2495} |
| `otherPssKb` | {'int': 2495} |
| `processes` | {'int': 2495} |
| `pssFallbackProcesses` | {'int': 2495} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
