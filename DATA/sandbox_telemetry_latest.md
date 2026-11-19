# sandbox_telemetry_parse — 2026-11-19 22:02:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1459396 lines=3236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3225 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3225} |
| `chromeGpuPssKb` | {'int': 3225} |
| `chromeOtherPssKb` | {'int': 3225} |
| `chromeProcesses` | {'int': 3225} |
| `chromeProfiles` | {'int': 3225} |
| `chromeRendererMaxPssKb` | {'int': 3225} |
| `chromeRendererPssKb` | {'int': 3225} |
| `chromeRenderers` | {'int': 3225} |
| `chromeTabs` | {'int': 3225} |
| `chromeTabsProbedProfiles` | {'int': 3225} |
| `chromeUtilityPssKb` | {'int': 3225} |
| `desktopPssKb` | {'int': 3225} |
| `hostPssKb` | {'int': 3225} |
| `kind` | {'str': 3225} |
| `memAvailableKb` | {'int': 3225} |
| `memTotalKb` | {'int': 3225} |
| `otherPssKb` | {'int': 3225} |
| `processes` | {'int': 3225} |
| `pssFallbackProcesses` | {'int': 3225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
