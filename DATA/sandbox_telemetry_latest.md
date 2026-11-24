# sandbox_telemetry_parse — 2026-11-24 08:46:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2212355 lines=4904
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4889 |
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
| `chromeBrowserPssKb` | {'int': 4889} |
| `chromeGpuPssKb` | {'int': 4889} |
| `chromeOtherPssKb` | {'int': 4889} |
| `chromeProcesses` | {'int': 4889} |
| `chromeProfiles` | {'int': 4889} |
| `chromeRendererMaxPssKb` | {'int': 4889} |
| `chromeRendererPssKb` | {'int': 4889} |
| `chromeRenderers` | {'int': 4889} |
| `chromeTabs` | {'int': 4889} |
| `chromeTabsProbedProfiles` | {'int': 4889} |
| `chromeUtilityPssKb` | {'int': 4889} |
| `desktopPssKb` | {'int': 4889} |
| `hostPssKb` | {'int': 4889} |
| `kind` | {'str': 4889} |
| `memAvailableKb` | {'int': 4889} |
| `memTotalKb` | {'int': 4889} |
| `otherPssKb` | {'int': 4889} |
| `processes` | {'int': 4889} |
| `pssFallbackProcesses` | {'int': 4889} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
