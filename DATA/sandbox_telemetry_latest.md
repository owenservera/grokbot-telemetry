# sandbox_telemetry_parse — 2026-11-19 11:59:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1263727 lines=2802
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2793 |
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
| `chromeBrowserPssKb` | {'int': 2793} |
| `chromeGpuPssKb` | {'int': 2793} |
| `chromeOtherPssKb` | {'int': 2793} |
| `chromeProcesses` | {'int': 2793} |
| `chromeProfiles` | {'int': 2793} |
| `chromeRendererMaxPssKb` | {'int': 2793} |
| `chromeRendererPssKb` | {'int': 2793} |
| `chromeRenderers` | {'int': 2793} |
| `chromeTabs` | {'int': 2793} |
| `chromeTabsProbedProfiles` | {'int': 2793} |
| `chromeUtilityPssKb` | {'int': 2793} |
| `desktopPssKb` | {'int': 2793} |
| `hostPssKb` | {'int': 2793} |
| `kind` | {'str': 2793} |
| `memAvailableKb` | {'int': 2793} |
| `memTotalKb` | {'int': 2793} |
| `otherPssKb` | {'int': 2793} |
| `processes` | {'int': 2793} |
| `pssFallbackProcesses` | {'int': 2793} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
