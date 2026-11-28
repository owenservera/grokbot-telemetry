# sandbox_telemetry_parse — 2026-11-28 20:55:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1057150 lines=2343
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2335 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2335} |
| `chromeGpuPssKb` | {'int': 2335} |
| `chromeOtherPssKb` | {'int': 2335} |
| `chromeProcesses` | {'int': 2335} |
| `chromeProfiles` | {'int': 2335} |
| `chromeRendererMaxPssKb` | {'int': 2335} |
| `chromeRendererPssKb` | {'int': 2335} |
| `chromeRenderers` | {'int': 2335} |
| `chromeTabs` | {'int': 2335} |
| `chromeTabsProbedProfiles` | {'int': 2335} |
| `chromeUtilityPssKb` | {'int': 2335} |
| `desktopPssKb` | {'int': 2335} |
| `hostPssKb` | {'int': 2335} |
| `kind` | {'str': 2335} |
| `memAvailableKb` | {'int': 2335} |
| `memTotalKb` | {'int': 2335} |
| `otherPssKb` | {'int': 2335} |
| `processes` | {'int': 2335} |
| `pssFallbackProcesses` | {'int': 2335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
