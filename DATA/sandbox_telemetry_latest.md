# sandbox_telemetry_parse — 2026-11-23 23:58:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2045498 lines=4535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4520 |
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
| `chromeBrowserPssKb` | {'int': 4520} |
| `chromeGpuPssKb` | {'int': 4520} |
| `chromeOtherPssKb` | {'int': 4520} |
| `chromeProcesses` | {'int': 4520} |
| `chromeProfiles` | {'int': 4520} |
| `chromeRendererMaxPssKb` | {'int': 4520} |
| `chromeRendererPssKb` | {'int': 4520} |
| `chromeRenderers` | {'int': 4520} |
| `chromeTabs` | {'int': 4520} |
| `chromeTabsProbedProfiles` | {'int': 4520} |
| `chromeUtilityPssKb` | {'int': 4520} |
| `desktopPssKb` | {'int': 4520} |
| `hostPssKb` | {'int': 4520} |
| `kind` | {'str': 4520} |
| `memAvailableKb` | {'int': 4520} |
| `memTotalKb` | {'int': 4520} |
| `otherPssKb` | {'int': 4520} |
| `processes` | {'int': 4520} |
| `pssFallbackProcesses` | {'int': 4520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
