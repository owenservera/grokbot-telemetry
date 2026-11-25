# sandbox_telemetry_parse — 2026-11-25 07:18:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2645260 lines=5861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5846 |
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
| `chromeBrowserPssKb` | {'int': 5846} |
| `chromeGpuPssKb` | {'int': 5846} |
| `chromeOtherPssKb` | {'int': 5846} |
| `chromeProcesses` | {'int': 5846} |
| `chromeProfiles` | {'int': 5846} |
| `chromeRendererMaxPssKb` | {'int': 5846} |
| `chromeRendererPssKb` | {'int': 5846} |
| `chromeRenderers` | {'int': 5846} |
| `chromeTabs` | {'int': 5846} |
| `chromeTabsProbedProfiles` | {'int': 5846} |
| `chromeUtilityPssKb` | {'int': 5846} |
| `desktopPssKb` | {'int': 5846} |
| `hostPssKb` | {'int': 5846} |
| `kind` | {'str': 5846} |
| `memAvailableKb` | {'int': 5846} |
| `memTotalKb` | {'int': 5846} |
| `otherPssKb` | {'int': 5846} |
| `processes` | {'int': 5846} |
| `pssFallbackProcesses` | {'int': 5846} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
