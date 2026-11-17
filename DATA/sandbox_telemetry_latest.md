# sandbox_telemetry_parse — 2026-11-17 20:29:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=525052 lines=1167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1160 |
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
| `chromeBrowserPssKb` | {'int': 1160} |
| `chromeGpuPssKb` | {'int': 1160} |
| `chromeOtherPssKb` | {'int': 1160} |
| `chromeProcesses` | {'int': 1160} |
| `chromeProfiles` | {'int': 1160} |
| `chromeRendererMaxPssKb` | {'int': 1160} |
| `chromeRendererPssKb` | {'int': 1160} |
| `chromeRenderers` | {'int': 1160} |
| `chromeTabs` | {'int': 1160} |
| `chromeTabsProbedProfiles` | {'int': 1160} |
| `chromeUtilityPssKb` | {'int': 1160} |
| `desktopPssKb` | {'int': 1160} |
| `hostPssKb` | {'int': 1160} |
| `kind` | {'str': 1160} |
| `memAvailableKb` | {'int': 1160} |
| `memTotalKb` | {'int': 1160} |
| `otherPssKb` | {'int': 1160} |
| `processes` | {'int': 1160} |
| `pssFallbackProcesses` | {'int': 1160} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
