# sandbox_telemetry_parse — 2026-11-26 01:58:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3022432 lines=6695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6680 |
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
| `chromeBrowserPssKb` | {'int': 6680} |
| `chromeGpuPssKb` | {'int': 6680} |
| `chromeOtherPssKb` | {'int': 6680} |
| `chromeProcesses` | {'int': 6680} |
| `chromeProfiles` | {'int': 6680} |
| `chromeRendererMaxPssKb` | {'int': 6680} |
| `chromeRendererPssKb` | {'int': 6680} |
| `chromeRenderers` | {'int': 6680} |
| `chromeTabs` | {'int': 6680} |
| `chromeTabsProbedProfiles` | {'int': 6680} |
| `chromeUtilityPssKb` | {'int': 6680} |
| `desktopPssKb` | {'int': 6680} |
| `hostPssKb` | {'int': 6680} |
| `kind` | {'str': 6680} |
| `memAvailableKb` | {'int': 6680} |
| `memTotalKb` | {'int': 6680} |
| `otherPssKb` | {'int': 6680} |
| `processes` | {'int': 6680} |
| `pssFallbackProcesses` | {'int': 6680} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
