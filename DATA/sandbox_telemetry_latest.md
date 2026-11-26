# sandbox_telemetry_parse — 2026-11-26 12:08:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3240966 lines=7178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7163 |
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
| `chromeBrowserPssKb` | {'int': 7163} |
| `chromeGpuPssKb` | {'int': 7163} |
| `chromeOtherPssKb` | {'int': 7163} |
| `chromeProcesses` | {'int': 7163} |
| `chromeProfiles` | {'int': 7163} |
| `chromeRendererMaxPssKb` | {'int': 7163} |
| `chromeRendererPssKb` | {'int': 7163} |
| `chromeRenderers` | {'int': 7163} |
| `chromeTabs` | {'int': 7163} |
| `chromeTabsProbedProfiles` | {'int': 7163} |
| `chromeUtilityPssKb` | {'int': 7163} |
| `desktopPssKb` | {'int': 7163} |
| `hostPssKb` | {'int': 7163} |
| `kind` | {'str': 7163} |
| `memAvailableKb` | {'int': 7163} |
| `memTotalKb` | {'int': 7163} |
| `otherPssKb` | {'int': 7163} |
| `processes` | {'int': 7163} |
| `pssFallbackProcesses` | {'int': 7163} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
