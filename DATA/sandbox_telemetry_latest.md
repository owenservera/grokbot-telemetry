# sandbox_telemetry_parse — 2026-11-12 05:40:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1992460 lines=4411
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4402 |
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
| `chromeBrowserPssKb` | {'int': 4402} |
| `chromeGpuPssKb` | {'int': 4402} |
| `chromeOtherPssKb` | {'int': 4402} |
| `chromeProcesses` | {'int': 4402} |
| `chromeProfiles` | {'int': 4402} |
| `chromeRendererMaxPssKb` | {'int': 4402} |
| `chromeRendererPssKb` | {'int': 4402} |
| `chromeRenderers` | {'int': 4402} |
| `chromeTabs` | {'int': 4402} |
| `chromeTabsProbedProfiles` | {'int': 4402} |
| `chromeUtilityPssKb` | {'int': 4402} |
| `desktopPssKb` | {'int': 4402} |
| `hostPssKb` | {'int': 4402} |
| `kind` | {'str': 4402} |
| `memAvailableKb` | {'int': 4402} |
| `memTotalKb` | {'int': 4402} |
| `otherPssKb` | {'int': 4402} |
| `processes` | {'int': 4402} |
| `pssFallbackProcesses` | {'int': 4402} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
