# sandbox_telemetry_parse — 2026-11-24 04:53:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2135469 lines=4734
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4719 |
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
| `chromeBrowserPssKb` | {'int': 4719} |
| `chromeGpuPssKb` | {'int': 4719} |
| `chromeOtherPssKb` | {'int': 4719} |
| `chromeProcesses` | {'int': 4719} |
| `chromeProfiles` | {'int': 4719} |
| `chromeRendererMaxPssKb` | {'int': 4719} |
| `chromeRendererPssKb` | {'int': 4719} |
| `chromeRenderers` | {'int': 4719} |
| `chromeTabs` | {'int': 4719} |
| `chromeTabsProbedProfiles` | {'int': 4719} |
| `chromeUtilityPssKb` | {'int': 4719} |
| `desktopPssKb` | {'int': 4719} |
| `hostPssKb` | {'int': 4719} |
| `kind` | {'str': 4719} |
| `memAvailableKb` | {'int': 4719} |
| `memTotalKb` | {'int': 4719} |
| `otherPssKb` | {'int': 4719} |
| `processes` | {'int': 4719} |
| `pssFallbackProcesses` | {'int': 4719} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
