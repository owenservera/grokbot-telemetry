# sandbox_telemetry_parse — 2026-11-19 14:03:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1302620 lines=2888
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2879 |
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
| `chromeBrowserPssKb` | {'int': 2879} |
| `chromeGpuPssKb` | {'int': 2879} |
| `chromeOtherPssKb` | {'int': 2879} |
| `chromeProcesses` | {'int': 2879} |
| `chromeProfiles` | {'int': 2879} |
| `chromeRendererMaxPssKb` | {'int': 2879} |
| `chromeRendererPssKb` | {'int': 2879} |
| `chromeRenderers` | {'int': 2879} |
| `chromeTabs` | {'int': 2879} |
| `chromeTabsProbedProfiles` | {'int': 2879} |
| `chromeUtilityPssKb` | {'int': 2879} |
| `desktopPssKb` | {'int': 2879} |
| `hostPssKb` | {'int': 2879} |
| `kind` | {'str': 2879} |
| `memAvailableKb` | {'int': 2879} |
| `memTotalKb` | {'int': 2879} |
| `otherPssKb` | {'int': 2879} |
| `processes` | {'int': 2879} |
| `pssFallbackProcesses` | {'int': 2879} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
