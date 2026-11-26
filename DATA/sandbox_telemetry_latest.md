# sandbox_telemetry_parse — 2026-11-26 07:48:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3148204 lines=6973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6958 |
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
| `chromeBrowserPssKb` | {'int': 6958} |
| `chromeGpuPssKb` | {'int': 6958} |
| `chromeOtherPssKb` | {'int': 6958} |
| `chromeProcesses` | {'int': 6958} |
| `chromeProfiles` | {'int': 6958} |
| `chromeRendererMaxPssKb` | {'int': 6958} |
| `chromeRendererPssKb` | {'int': 6958} |
| `chromeRenderers` | {'int': 6958} |
| `chromeTabs` | {'int': 6958} |
| `chromeTabsProbedProfiles` | {'int': 6958} |
| `chromeUtilityPssKb` | {'int': 6958} |
| `desktopPssKb` | {'int': 6958} |
| `hostPssKb` | {'int': 6958} |
| `kind` | {'str': 6958} |
| `memAvailableKb` | {'int': 6958} |
| `memTotalKb` | {'int': 6958} |
| `otherPssKb` | {'int': 6958} |
| `processes` | {'int': 6958} |
| `pssFallbackProcesses` | {'int': 6958} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
