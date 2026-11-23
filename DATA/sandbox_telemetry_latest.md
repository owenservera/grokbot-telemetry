# sandbox_telemetry_parse — 2026-11-24 00:20:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2053634 lines=4553
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4538 |
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
| `chromeBrowserPssKb` | {'int': 4538} |
| `chromeGpuPssKb` | {'int': 4538} |
| `chromeOtherPssKb` | {'int': 4538} |
| `chromeProcesses` | {'int': 4538} |
| `chromeProfiles` | {'int': 4538} |
| `chromeRendererMaxPssKb` | {'int': 4538} |
| `chromeRendererPssKb` | {'int': 4538} |
| `chromeRenderers` | {'int': 4538} |
| `chromeTabs` | {'int': 4538} |
| `chromeTabsProbedProfiles` | {'int': 4538} |
| `chromeUtilityPssKb` | {'int': 4538} |
| `desktopPssKb` | {'int': 4538} |
| `hostPssKb` | {'int': 4538} |
| `kind` | {'str': 4538} |
| `memAvailableKb` | {'int': 4538} |
| `memTotalKb` | {'int': 4538} |
| `otherPssKb` | {'int': 4538} |
| `processes` | {'int': 4538} |
| `pssFallbackProcesses` | {'int': 4538} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
