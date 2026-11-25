# sandbox_telemetry_parse — 2026-11-25 01:11:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2530874 lines=5608
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5593 |
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
| `chromeBrowserPssKb` | {'int': 5593} |
| `chromeGpuPssKb` | {'int': 5593} |
| `chromeOtherPssKb` | {'int': 5593} |
| `chromeProcesses` | {'int': 5593} |
| `chromeProfiles` | {'int': 5593} |
| `chromeRendererMaxPssKb` | {'int': 5593} |
| `chromeRendererPssKb` | {'int': 5593} |
| `chromeRenderers` | {'int': 5593} |
| `chromeTabs` | {'int': 5593} |
| `chromeTabsProbedProfiles` | {'int': 5593} |
| `chromeUtilityPssKb` | {'int': 5593} |
| `desktopPssKb` | {'int': 5593} |
| `hostPssKb` | {'int': 5593} |
| `kind` | {'str': 5593} |
| `memAvailableKb` | {'int': 5593} |
| `memTotalKb` | {'int': 5593} |
| `otherPssKb` | {'int': 5593} |
| `processes` | {'int': 5593} |
| `pssFallbackProcesses` | {'int': 5593} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
