# sandbox_telemetry_parse — 2026-11-24 23:32:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2497872 lines=5535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5520 |
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
| `chromeBrowserPssKb` | {'int': 5520} |
| `chromeGpuPssKb` | {'int': 5520} |
| `chromeOtherPssKb` | {'int': 5520} |
| `chromeProcesses` | {'int': 5520} |
| `chromeProfiles` | {'int': 5520} |
| `chromeRendererMaxPssKb` | {'int': 5520} |
| `chromeRendererPssKb` | {'int': 5520} |
| `chromeRenderers` | {'int': 5520} |
| `chromeTabs` | {'int': 5520} |
| `chromeTabsProbedProfiles` | {'int': 5520} |
| `chromeUtilityPssKb` | {'int': 5520} |
| `desktopPssKb` | {'int': 5520} |
| `hostPssKb` | {'int': 5520} |
| `kind` | {'str': 5520} |
| `memAvailableKb` | {'int': 5520} |
| `memTotalKb` | {'int': 5520} |
| `otherPssKb` | {'int': 5520} |
| `processes` | {'int': 5520} |
| `pssFallbackProcesses` | {'int': 5520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
