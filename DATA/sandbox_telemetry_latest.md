# sandbox_telemetry_parse — 2026-11-23 21:10:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1988477 lines=4409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4394 |
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
| `chromeBrowserPssKb` | {'int': 4394} |
| `chromeGpuPssKb` | {'int': 4394} |
| `chromeOtherPssKb` | {'int': 4394} |
| `chromeProcesses` | {'int': 4394} |
| `chromeProfiles` | {'int': 4394} |
| `chromeRendererMaxPssKb` | {'int': 4394} |
| `chromeRendererPssKb` | {'int': 4394} |
| `chromeRenderers` | {'int': 4394} |
| `chromeTabs` | {'int': 4394} |
| `chromeTabsProbedProfiles` | {'int': 4394} |
| `chromeUtilityPssKb` | {'int': 4394} |
| `desktopPssKb` | {'int': 4394} |
| `hostPssKb` | {'int': 4394} |
| `kind` | {'str': 4394} |
| `memAvailableKb` | {'int': 4394} |
| `memTotalKb` | {'int': 4394} |
| `otherPssKb` | {'int': 4394} |
| `processes` | {'int': 4394} |
| `pssFallbackProcesses` | {'int': 4394} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
