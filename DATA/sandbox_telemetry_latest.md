# sandbox_telemetry_parse — 2026-11-25 08:47:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2679192 lines=5936
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5921 |
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
| `chromeBrowserPssKb` | {'int': 5921} |
| `chromeGpuPssKb` | {'int': 5921} |
| `chromeOtherPssKb` | {'int': 5921} |
| `chromeProcesses` | {'int': 5921} |
| `chromeProfiles` | {'int': 5921} |
| `chromeRendererMaxPssKb` | {'int': 5921} |
| `chromeRendererPssKb` | {'int': 5921} |
| `chromeRenderers` | {'int': 5921} |
| `chromeTabs` | {'int': 5921} |
| `chromeTabsProbedProfiles` | {'int': 5921} |
| `chromeUtilityPssKb` | {'int': 5921} |
| `desktopPssKb` | {'int': 5921} |
| `hostPssKb` | {'int': 5921} |
| `kind` | {'str': 5921} |
| `memAvailableKb` | {'int': 5921} |
| `memTotalKb` | {'int': 5921} |
| `otherPssKb` | {'int': 5921} |
| `processes` | {'int': 5921} |
| `pssFallbackProcesses` | {'int': 5921} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
