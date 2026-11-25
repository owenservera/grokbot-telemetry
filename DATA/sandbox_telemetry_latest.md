# sandbox_telemetry_parse — 2026-11-25 15:53:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2820290 lines=6248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6233 |
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
| `chromeBrowserPssKb` | {'int': 6233} |
| `chromeGpuPssKb` | {'int': 6233} |
| `chromeOtherPssKb` | {'int': 6233} |
| `chromeProcesses` | {'int': 6233} |
| `chromeProfiles` | {'int': 6233} |
| `chromeRendererMaxPssKb` | {'int': 6233} |
| `chromeRendererPssKb` | {'int': 6233} |
| `chromeRenderers` | {'int': 6233} |
| `chromeTabs` | {'int': 6233} |
| `chromeTabsProbedProfiles` | {'int': 6233} |
| `chromeUtilityPssKb` | {'int': 6233} |
| `desktopPssKb` | {'int': 6233} |
| `hostPssKb` | {'int': 6233} |
| `kind` | {'str': 6233} |
| `memAvailableKb` | {'int': 6233} |
| `memTotalKb` | {'int': 6233} |
| `otherPssKb` | {'int': 6233} |
| `processes` | {'int': 6233} |
| `pssFallbackProcesses` | {'int': 6233} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
