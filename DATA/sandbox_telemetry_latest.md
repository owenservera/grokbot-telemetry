# sandbox_telemetry_parse — 2026-11-25 19:34:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2893090 lines=6409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6394 |
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
| `chromeBrowserPssKb` | {'int': 6394} |
| `chromeGpuPssKb` | {'int': 6394} |
| `chromeOtherPssKb` | {'int': 6394} |
| `chromeProcesses` | {'int': 6394} |
| `chromeProfiles` | {'int': 6394} |
| `chromeRendererMaxPssKb` | {'int': 6394} |
| `chromeRendererPssKb` | {'int': 6394} |
| `chromeRenderers` | {'int': 6394} |
| `chromeTabs` | {'int': 6394} |
| `chromeTabsProbedProfiles` | {'int': 6394} |
| `chromeUtilityPssKb` | {'int': 6394} |
| `desktopPssKb` | {'int': 6394} |
| `hostPssKb` | {'int': 6394} |
| `kind` | {'str': 6394} |
| `memAvailableKb` | {'int': 6394} |
| `memTotalKb` | {'int': 6394} |
| `otherPssKb` | {'int': 6394} |
| `processes` | {'int': 6394} |
| `pssFallbackProcesses` | {'int': 6394} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
