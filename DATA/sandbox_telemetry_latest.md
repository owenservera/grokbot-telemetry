# sandbox_telemetry_parse — 2026-11-26 13:46:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3277154 lines=7258
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7243 |
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
| `chromeBrowserPssKb` | {'int': 7243} |
| `chromeGpuPssKb` | {'int': 7243} |
| `chromeOtherPssKb` | {'int': 7243} |
| `chromeProcesses` | {'int': 7243} |
| `chromeProfiles` | {'int': 7243} |
| `chromeRendererMaxPssKb` | {'int': 7243} |
| `chromeRendererPssKb` | {'int': 7243} |
| `chromeRenderers` | {'int': 7243} |
| `chromeTabs` | {'int': 7243} |
| `chromeTabsProbedProfiles` | {'int': 7243} |
| `chromeUtilityPssKb` | {'int': 7243} |
| `desktopPssKb` | {'int': 7243} |
| `hostPssKb` | {'int': 7243} |
| `kind` | {'str': 7243} |
| `memAvailableKb` | {'int': 7243} |
| `memTotalKb` | {'int': 7243} |
| `otherPssKb` | {'int': 7243} |
| `processes` | {'int': 7243} |
| `pssFallbackProcesses` | {'int': 7243} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
