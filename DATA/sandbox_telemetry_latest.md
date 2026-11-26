# sandbox_telemetry_parse — 2026-11-26 13:10:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3263582 lines=7228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7213 |
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
| `chromeBrowserPssKb` | {'int': 7213} |
| `chromeGpuPssKb` | {'int': 7213} |
| `chromeOtherPssKb` | {'int': 7213} |
| `chromeProcesses` | {'int': 7213} |
| `chromeProfiles` | {'int': 7213} |
| `chromeRendererMaxPssKb` | {'int': 7213} |
| `chromeRendererPssKb` | {'int': 7213} |
| `chromeRenderers` | {'int': 7213} |
| `chromeTabs` | {'int': 7213} |
| `chromeTabsProbedProfiles` | {'int': 7213} |
| `chromeUtilityPssKb` | {'int': 7213} |
| `desktopPssKb` | {'int': 7213} |
| `hostPssKb` | {'int': 7213} |
| `kind` | {'str': 7213} |
| `memAvailableKb` | {'int': 7213} |
| `memTotalKb` | {'int': 7213} |
| `otherPssKb` | {'int': 7213} |
| `processes` | {'int': 7213} |
| `pssFallbackProcesses` | {'int': 7213} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
