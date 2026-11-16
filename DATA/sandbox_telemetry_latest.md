# sandbox_telemetry_parse — 2026-11-16 18:24:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=72911 lines=167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 160 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 160} |
| `chromeGpuPssKb` | {'int': 160} |
| `chromeOtherPssKb` | {'int': 160} |
| `chromeProcesses` | {'int': 160} |
| `chromeProfiles` | {'int': 160} |
| `chromeRendererMaxPssKb` | {'int': 160} |
| `chromeRendererPssKb` | {'int': 160} |
| `chromeRenderers` | {'int': 160} |
| `chromeTabs` | {'int': 160} |
| `chromeTabsProbedProfiles` | {'int': 160} |
| `chromeUtilityPssKb` | {'int': 160} |
| `desktopPssKb` | {'int': 160} |
| `hostPssKb` | {'int': 160} |
| `kind` | {'str': 160} |
| `memAvailableKb` | {'int': 160} |
| `memTotalKb` | {'int': 160} |
| `otherPssKb` | {'int': 160} |
| `processes` | {'int': 160} |
| `pssFallbackProcesses` | {'int': 160} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
