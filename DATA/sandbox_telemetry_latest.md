# sandbox_telemetry_parse — 2026-11-25 16:03:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2822550 lines=6253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6238 |
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
| `chromeBrowserPssKb` | {'int': 6238} |
| `chromeGpuPssKb` | {'int': 6238} |
| `chromeOtherPssKb` | {'int': 6238} |
| `chromeProcesses` | {'int': 6238} |
| `chromeProfiles` | {'int': 6238} |
| `chromeRendererMaxPssKb` | {'int': 6238} |
| `chromeRendererPssKb` | {'int': 6238} |
| `chromeRenderers` | {'int': 6238} |
| `chromeTabs` | {'int': 6238} |
| `chromeTabsProbedProfiles` | {'int': 6238} |
| `chromeUtilityPssKb` | {'int': 6238} |
| `desktopPssKb` | {'int': 6238} |
| `hostPssKb` | {'int': 6238} |
| `kind` | {'str': 6238} |
| `memAvailableKb` | {'int': 6238} |
| `memTotalKb` | {'int': 6238} |
| `otherPssKb` | {'int': 6238} |
| `processes` | {'int': 6238} |
| `pssFallbackProcesses` | {'int': 6238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
