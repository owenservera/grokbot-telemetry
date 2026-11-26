# sandbox_telemetry_parse — 2026-11-26 13:35:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3272632 lines=7248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7233 |
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
| `chromeBrowserPssKb` | {'int': 7233} |
| `chromeGpuPssKb` | {'int': 7233} |
| `chromeOtherPssKb` | {'int': 7233} |
| `chromeProcesses` | {'int': 7233} |
| `chromeProfiles` | {'int': 7233} |
| `chromeRendererMaxPssKb` | {'int': 7233} |
| `chromeRendererPssKb` | {'int': 7233} |
| `chromeRenderers` | {'int': 7233} |
| `chromeTabs` | {'int': 7233} |
| `chromeTabsProbedProfiles` | {'int': 7233} |
| `chromeUtilityPssKb` | {'int': 7233} |
| `desktopPssKb` | {'int': 7233} |
| `hostPssKb` | {'int': 7233} |
| `kind` | {'str': 7233} |
| `memAvailableKb` | {'int': 7233} |
| `memTotalKb` | {'int': 7233} |
| `otherPssKb` | {'int': 7233} |
| `processes` | {'int': 7233} |
| `pssFallbackProcesses` | {'int': 7233} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
