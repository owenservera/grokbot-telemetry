# sandbox_telemetry_parse — 2026-11-07 10:11:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=414574 lines=924
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 915 |
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
| `chromeBrowserPssKb` | {'int': 915} |
| `chromeGpuPssKb` | {'int': 915} |
| `chromeOtherPssKb` | {'int': 915} |
| `chromeProcesses` | {'int': 915} |
| `chromeProfiles` | {'int': 915} |
| `chromeRendererMaxPssKb` | {'int': 915} |
| `chromeRendererPssKb` | {'int': 915} |
| `chromeRenderers` | {'int': 915} |
| `chromeTabs` | {'int': 915} |
| `chromeTabsProbedProfiles` | {'int': 915} |
| `chromeUtilityPssKb` | {'int': 915} |
| `desktopPssKb` | {'int': 915} |
| `hostPssKb` | {'int': 915} |
| `kind` | {'str': 915} |
| `memAvailableKb` | {'int': 915} |
| `memTotalKb` | {'int': 915} |
| `otherPssKb` | {'int': 915} |
| `processes` | {'int': 915} |
| `pssFallbackProcesses` | {'int': 915} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
