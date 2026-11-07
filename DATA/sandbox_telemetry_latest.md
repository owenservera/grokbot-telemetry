# sandbox_telemetry_parse — 2026-11-07 09:28:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=399188 lines=890
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 881 |
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
| `chromeBrowserPssKb` | {'int': 881} |
| `chromeGpuPssKb` | {'int': 881} |
| `chromeOtherPssKb` | {'int': 881} |
| `chromeProcesses` | {'int': 881} |
| `chromeProfiles` | {'int': 881} |
| `chromeRendererMaxPssKb` | {'int': 881} |
| `chromeRendererPssKb` | {'int': 881} |
| `chromeRenderers` | {'int': 881} |
| `chromeTabs` | {'int': 881} |
| `chromeTabsProbedProfiles` | {'int': 881} |
| `chromeUtilityPssKb` | {'int': 881} |
| `desktopPssKb` | {'int': 881} |
| `hostPssKb` | {'int': 881} |
| `kind` | {'str': 881} |
| `memAvailableKb` | {'int': 881} |
| `memTotalKb` | {'int': 881} |
| `otherPssKb` | {'int': 881} |
| `processes` | {'int': 881} |
| `pssFallbackProcesses` | {'int': 881} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
